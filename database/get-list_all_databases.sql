--==============================================================================
-- 
--==============================================================================
-- Description.......: List all databases
-- Author............: Data Precog
-- Email.............: info@dataprecog.com
-- Date..............: 2009.02.08
-- Version...........: 1.0

--===============================================================================
-- List all databases in the current instance
--===============================================================================
\l
\list
\l+
\list+

--===============================================================================
-- Or
--===============================================================================
SELECT datname 
FROM pg_database
WHERE datistemplate = false;

--===============================================================================
-- EOF
--===============================================================================
