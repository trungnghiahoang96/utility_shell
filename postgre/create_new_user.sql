
/*

# ref 

https://www.dbrnd.com/2015/10/postgresql-script-to-create-a-read-only-database-user/

example :

psql databasehere
CREATE USER moodle_readonly WITH ENCRYPTED PASSWORD 'blablablapasswordhere';
GRANT CONNECT ON DATABASE moodle TO moodle_readonly;
GRANT USAGE ON SCHEMA public TO moodle_readonly;
GRANT SELECT ON ALL SEQUENCES IN SCHEMA public TO moodle_readonly;
GRANT SELECT ON ALL TABLES IN SCHEMA public to moodle_readonly;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO moodle_readonly;

*/

--  Script to Create Read-Only user:
-- please modify user account and password here 
CREATE ROLE Read_Only_User WITH LOGIN PASSWORD 'Test1234' 
NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION VALID UNTIL 'infinity';
Assign permission to this read only user:
-- please modify the schema name here 
GRANT CONNECT ON DATABASE YourDatabaseName TO Read_Only_User;
GRANT USAGE ON SCHEMA public TO Read_Only_User;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO Read_Only_User;
GRANT SELECT ON ALL SEQUENCES IN SCHEMA public TO Read_Only_User;
-- grant all PRIVILEGES of table  to the user
-- https://dba.stackexchange.com/questions/33943/granting-access-to-all-tables-for-a-user
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO Read_Only_User;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO Read_Only_User;
--













