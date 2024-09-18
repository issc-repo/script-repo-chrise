USE DB_Name;  
GO  
-- Truncate the log by changing the database recovery model to SIMPLE.  
ALTER DATABASE DB_Name
SET RECOVERY SIMPLE;  
GO  
-- Shrink the truncated log file to 1 MB.  
DBCC SHRINKFILE (DB_log, 1);  
GO  
-- Reset the database recovery model.  
ALTER DATABASE DB_Name
SET RECOVERY FULL;  
GO 
