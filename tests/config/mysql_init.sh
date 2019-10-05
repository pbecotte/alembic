#!/bin/bash
set -e

mysql -v -u root -proot <<-EOSQL
  CREATE SCHEMA IF NOT EXISTS test_schema;
  GRANT ALL PRIVILEGES ON *.* TO 'scott'@'%';
EOSQL
