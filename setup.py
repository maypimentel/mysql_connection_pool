#!/usr/bin/env python
# encoding: utf-8

from distutils.core import setup

try:  # for pip >= 10
    from pip._internal.req import parse_requirements
    from pip._internal.download import PipSession
except ImportError: # for pip <= 9.0.3
    from pip.req import parse_requirements
    from pip.download import PipSession


# parse_requirements() returns generator of pip.req.InstallRequirement objects
install_reqs = parse_requirements('requirements.txt', session=PipSession())

# reqs is a list of requirement
reqs = [str(ir.req) for ir in install_reqs]

setup(name='mysql_connection_pool',
      version='1.0.1',
      url='https://github.com/maypimentel/mysql_connection_pool',
      install_requires=reqs,
      author='Maycon Pimentel',
      author_email='maycon.pimentel@gmail.com',
      description='Mysql connection pool',
      py_modules=['mysql_connection_pool'],
      packages=['mysql_connection_pool']
    )
