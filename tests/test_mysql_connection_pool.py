import pytest

from mysql_connection_pool import MySQLPool
from mysql.connector import MySQLConnection
from mysql.connector.errors import PoolError

class TestMysqlConnectionPool:
    def setup_method(self, method):
        self.pool = MySQLPool(pool_size=2, pool_max_size=2)

    def test_cnx_type(self):
        cnx = self.pool.get_connection()
        assert isinstance(cnx, MySQLConnection)
    
    def test_cnx_and_cursor(self):
        cnx = self.pool.get_connection()
        cursor = cnx.cursor()
        cursor.execute('SELECT * FROM book LIMIT 1;')
        cursor.fetchall()
        assert cursor.rowcount == 1

    def test_cnx_empty(self):
        cnx1 = self.pool.get_connection()
        cnx2 = self.pool.get_connection()
        with pytest.raises(PoolError, match='Pool exhausted'):
            cnx3 = self.pool.get_connection()
