-- Database: test

-- DROP DATABASE test;

CREATE DATABASE test
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Russian_Russia.1251'
    LC_CTYPE = 'Russian_Russia.1251'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

COMMENT ON DATABASE test
    IS 'Test database';

GRANT ALL ON DATABASE test TO postgres;

GRANT TEMPORARY, CONNECT ON DATABASE test TO PUBLIC;

-- SCHEMA: medicine

-- DROP SCHEMA medicine ;

CREATE SCHEMA medicine
    AUTHORIZATION postgres;

GRANT ALL ON SCHEMA medicine TO postgres;

GRANT ALL ON SCHEMA medicine TO PUBLIC;

