#!/usr/bin/env python
# -*- coding: utf-8 -*-
from mysql_connection_pool import MysqlPool
import random
from threading import Thread
from time import sleep


def worker(pool, thread_num):
    while True:
        print('\nThread: %i \n' % (thread_num))
        cnx = pool.get_connection()

        cursor = cnx.cursor()
        query = '''
                SELECT 
                    b.title, 
                    a.name 
                FROM book b INNER JOIN author a on a.id = b.author_id
                WHERE b.author_id = %s
                LIMIT 5;
            '''
        cursor.execute(query % (thread_num))
        for book in cursor.fetchall():
            print('Book:{}, Author:{}'.format(book[0], book[1]))

        cursor.close()
        cnx.disconnect()
        # Requeued connection after use
        pool.pool_connection(cnx)
        sleep(1)

sleep(10) # waiting for the database to be ready
mypool = MysqlPool(pool_size=3, pool_max_size=4)
# Start 4 threads
for i in range(4):
    t = Thread(target=worker, args=[mypool, i+1])
    t.start()
