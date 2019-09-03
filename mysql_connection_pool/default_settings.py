#!/usr/bin/env python
# -*- coding: utf-8 -*-
from decouple import config

POOL_NAME       = config('POOL_NAME', default='mypool')
MYSQL_HOST      = config('MYSQL_HOST', default='mysql')
MYSQL_PORT      = config('MYSQL_PORT', default=3306, cast=int)
MYSQL_USER      = config('MYSQL_USER', default='user')
MYSQL_PASSWORD  = config('MYSQL_PASSWORD', default='password')
MYSQL_DATABASE  = config('MYSQL_DATABASE', default='library')
