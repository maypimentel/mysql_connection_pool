#!/usr/bin/env python
# -*- coding: utf-8 -*-
from mysql_connection_pool import MySQLPool
import random
from threading import Thread
from time import sleep

mypool = MySQLPool(
    host='mysql', port='3306', user='usertest',
    password='password', database='library', pool_name='mypool',
    pool_size=3, pool_max_size=4
)

def worker(pool, thread_num):
    while True:
        print('\nThread: %i \n' % (thread_num + 1))
        cnx = pool.get_connection()

        cursor = cnx.cursor()
        cursor.execute('select title from book where author_id = %i' % random.randint(1,10))
        for book in cursor.fetchall():
            print(book[0])

        cursor.close()
        cnx.disconnect()
        # Requeued connection after use
        pool.pool_connection(cnx)
        sleep(1)

# Start 4 threads
for i in range(4):
    t = Thread(target=worker,args=[mypool, i])
    t.start()

# print('\nOuther closed connections: %i\n' % mypool.close())
