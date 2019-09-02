# mysql_connection_pool
MySQL connection pool
Tem o objetivo de gerenciar um pool de conexões reciclando ou encerrando as conexões quando necessário

### Dependências
 - [docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/) 
 - [docker-compose](https://docs.docker.com/compose/install/) 

## How to use
```python
from mysql_connection_pool import MySQLPool

mypool = MySQLPool(
    host='mysql', port='3306', user='user',
    password='password', database='library', pool_name='mypool',
    pool_size=4, pool_max_size=4
)

cnx = mypool.get_connection()
cursor = cnx.cursor()
cursor.execute('select * from book')
for book in cursor.fetchall():
    print(book['name'])

cursor.close()
cnx.disconnect()
# Requeued connection for reuse
mypool.pool_connection(cnx)
# Close all other unused connections
mypool.close()
```