--==============================================================================
-- 
--==============================================================================
-- Description.......: Get Size of All databases
-- Author............: Data Precog
-- Email.............: info@dataprecog.com
-- Date..............: 2009.02.08
-- Version...........: 1.0

--===============================================================================
-- get the size of all databases:
--===============================================================================
SELECT pg_database.datname as "<database_name>"
	, pg_database_size(pg_database.datname) / 1024 / 1024 / 1024 AS size_gb 
	, pg_database_size(pg_database.datname) / 1024 / 1024 AS size_mb
	, pg_database_size(pg_database.datname) / 1024 AS size_kb
	, pg_database_size(pg_database.datname) AS size_b
FROM pg_database
ORDER BY pg_database_size(pg_database.datname) DESC;

--===============================================================================
--or
--===============================================================================
\l+

--===============================================================================
-- EOF
--===============================================================================
