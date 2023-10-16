\c book_test

-- Create the 'ro' user with a password
CREATE USER api WITH PASSWORD 'apipass';
CREATE USER ro WITH PASSWORD 'ropass';
CREATE USER vip WITH PASSWORD 'vippass';
ALTER USER postgres PASSWORD 'password2';

GRANT CREATE ON DATABASE book_test TO api;
-- Create schemas and grant all privileges to 'api' (as in the original script)
CREATE SCHEMA bk;
CREATE SCHEMA sys;
CREATE SCHEMA ten;
CREATE SCHEMA sch;

GRANT ALL PRIVILEGES ON SCHEMA bk TO api;
GRANT ALL PRIVILEGES ON SCHEMA sys TO api;
GRANT ALL PRIVILEGES ON SCHEMA ten TO api;
GRANT ALL PRIVILEGES ON SCHEMA sch TO api;
GRANT USAGE ON SCHEMA public TO api;
GRANT CREATE ON SCHEMA public TO api;
GRANT INSERT, UPDATE, DELETE, SELECT, TRUNCATE ON ALL TABLES IN SCHEMA public TO api;

-- Grant read-only privileges to 'ro' on all schemas
GRANT USAGE ON SCHEMA bk TO ro;
GRANT USAGE ON SCHEMA sys TO ro;
GRANT USAGE ON SCHEMA ten TO ro;
GRANT USAGE ON SCHEMA sch TO ro;

-- Grant SELECT privilege on all existing tables in the schemas for 'ro'
GRANT SELECT ON ALL TABLES IN SCHEMA bk TO ro;
GRANT SELECT ON ALL TABLES IN SCHEMA sys TO ro;
GRANT SELECT ON ALL TABLES IN SCHEMA ten TO ro;
GRANT SELECT ON ALL TABLES IN SCHEMA sch TO ro;



