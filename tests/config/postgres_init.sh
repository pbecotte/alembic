#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    ALTER DATABASE test SET default_text_search_config = 'pg_catalog.english';
    create extension hstore;
    CREATE SCHEMA IF NOT EXISTS test_schema AUTHORIZATION "$POSTGRES_USER";
    CREATE SCHEMA IF NOT EXISTS test_schema_2 AUTHORIZATION "$POSTGRES_USER";
EOSQL
