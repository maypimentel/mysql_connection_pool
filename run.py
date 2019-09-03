#!/usr/bin/env python
# -*- coding: utf-8 -*-
from mysql_connection_pool import MySQLPool
import random
from threading import Thread
from time import sleep

mypool = MySQLPool(pool_size=3, pool_max_size=4)

def worker(pool, thread_num):
    while True:
        print('\nThread: %i \n' % (thread_num))
        cnx = pool.get_connection()

        cursor = cnx.cursor()
        query = '''
                SELECT 
                    b.title, 
                    a.name 
                FROM book b LEFT JOIN author a on a.id = b.author_id
                WHERE b.author_id = %s;
            '''
        cursor.execute(query % (thread_num))
        for book in cursor.fetchall():
            print('Book:{}, Author:{}'.format(book[0], book[1]))

        cursor.close()
        cnx.disconnect()
        # Requeued connection after use
        pool.pool_connection(cnx)
        sleep(1)

sleep(10)
# Start 4 threads
for i in range(4):
    t = Thread(target=worker, args=[mypool, i+1])
    t.start()

# print('\nOuther closed connections: %i\n' % mypool.close())
