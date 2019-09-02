#!/usr/bin/env python
# -*- coding: utf-8 -*-
from mysql_connection_pool import MySQLPool


mypool = MySQLPool(
    host='mysql', port='3306', user='usertest',
    password='password', database='library', pool_name='mypool',
    pool_size=4, pool_max_size=4
)
print('Total active connections: %i \n' % (mypool._cnx_queue.qsize()))
cnx = mypool.get_connection()

cursor = cnx.cursor()
cursor.execute('select title from book where author_id = 3')
for book in cursor.fetchall():
    print(book[0])

cursor.close()
cnx.close()
print('\nOuther closed connections: %i\n' % mypool.close())
