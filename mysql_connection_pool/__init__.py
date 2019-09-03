#!/usr/bin/env python
# -*- coding: utf-8 -*-
# autor              :Maycon Pimentel <maycon.pimentel@gmail.com>
# description        :MySQL Connection pool
# title              :
# date               :20190902
# copyright          :Maycon Pimentel

from .default_settings import *
from mysql.connector import MySQLConnection, errors, Error
import queue
import threading

CONNECTION_POOL_LOCK = threading.RLock()


class MySQLPool(object):
    """
    create a pool when connect mysql, which will decrease the time spent in 
    request connection, create connection and close connection.
    """
    def __init__(self, host=MYSQL_HOST, port=MYSQL_PORT, user=MYSQL_USER,
                 password=MYSQL_PASSWORD, database=MYSQL_DATABASE, pool_name=POOL_NAME,
                 pool_size=3, pool_max_size=10):
        if pool_size > pool_max_size or pool_size <= 0:
            raise AttributeError('Error: pool_size should be higher 0 and lower or equal to pool_max_size')
        self._host = host
        self._port = port
        self._user = user
        self._password = password
        self._database = database
        self._dbconfig = {
            'host': self._host,
            'port': self._port,
            'user': self._user,
            'password': self._password,
            'database': self._database,
            'connect_timeout': 100
        }
        self._pool_name = pool_name
        self._pool_size = pool_size
        self._pool_max_size = pool_max_size
        self._cnx_pool = queue.Queue(self._pool_max_size)
        self._used_connections = 0
        self._create_pool(pool_size)

    def _create_pool(self, pool_size):
        # Creates a pool with pool_size
        while self._cnx_pool.qsize() < pool_size:
            self.pool_connection(self._create_connection())

    def _create_connection(self):
        try:
            cnx = MySQLConnection(**self._dbconfig)
            return cnx
        except Error as err:
            raise err

    def pool_connection(self, cnx):
        if not isinstance(cnx, MySQLConnection):
            raise errors.PoolError(
                "Connection instance not subclass of MySQLConnection.")
        try:
            self._cnx_pool.put(cnx, block=False)
        except queue.Full:
            errors.PoolError("Failed adding connection; queue is full")

    def get_connection(self):
        with CONNECTION_POOL_LOCK:
            try:
                cnx = self._cnx_pool.get(block=False)
                self._recycle(cnx)
                self._used_connections += 1
                # If queue is empty but used_connections is lower than 
                # pool_max_size, create a new connection
            except queue.Empty:
                if self._used_connections < self._pool_max_size and not self._cnx_pool.full():
                    cnx = self._create_connection()
                    self._used_connections += 1
                    pass
                else:
                    raise errors.PoolError("Failed getting connection; pool exhausted")
            except Error as err:
                raise err

            return cnx

    def _recycle(self, cnx):
        if not cnx.is_connected():
            try:
                cnx.reconnect()
                self._used_connections -= 1
            except errors.InterfaceError:
                # Failed to reconnect, give connection back to pool
                self.pool_connection(cnx)
                raise

    def close(self):
        return self._remove_connections()

    def _remove_connections(self):
        with CONNECTION_POOL_LOCK:
            cnt = 0
            cnxq = self._cnx_pool
            while cnxq.qsize():
                try:
                    cnx = cnxq.get(block=False)
                    cnx.disconnect()
                    cnx.close()
                    cnt += 1
                except queue.Empty:
                    return cnt
                except errors.PoolError:
                    raise
                except errors.Error:
                    pass

            return cnt
