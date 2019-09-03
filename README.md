# mysql_connection_pool
MySQL connection pool
Tem o objetivo de gerenciar um pool de conexões reciclando ou encerrando as conexões quando necessário

### Dependências
 - [docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/) 
 - [docker-compose](https://docs.docker.com/compose/install/) 

## Como usar
```python
from mysql_connection_pool import MysqlPool

mypool = MysqlPool(
    host='mysql', port='3306', user='user',
    password='password', database='library', pool_name='mypool',
    pool_size=4, pool_max_size=4
)

cnx = mypool.get_connection()
cursor = cnx.cursor(dictionary=True)
cursor.execute('select title from book')
for book in cursor.fetchall():
    print(book['title'])

cursor.close()
cnx.disconnect()
# Requeued connection for reuse
mypool.pool_connection(cnx)
# Close all other unused connections
mypool.close()
```

## Executando a aplicação
### Subindo a stack
```sh
make start
```
### Parando a stack
```sh
make stop
```
### Rodando testes
```sh
make start-as-daemon
sleep 5
make test-on-docker
make stop
```
