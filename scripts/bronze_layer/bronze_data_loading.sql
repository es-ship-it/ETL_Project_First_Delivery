-- ==========================================================
-- Bronze Data Loading Script
-- Description:
-- This script reloads the Bronze layer by truncating the
-- existing table and ingesting the raw CSV dataset into
-- MySQL using secure file import settings.
-- The process ensures:
-- 1. Clean reload of raw data
-- 2. UTF-8 encoding preservation
-- 3. Controlled file access via secure_file_priv
-- 4. Validation through row count and data preview

SET GLOBAL local_infile = 0;

TRUNCATE TABLE bronze_table;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/cantones_vacunas.csv'
INTO TABLE bronze_table
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS (
zona, region, provincia, provincia_poblacion, canton, canton_poblacion,
dosis_total, primera_dosis, segunda_dosis, dosis_unica,
dosis_refuerzo, lat, lng, created_at
);

SHOW VARIABLES LIKE 'local_infile';
SHOW VARIABLES LIKE 'secure_file_priv';

SELECT * FROM bronze_table;
SELECT COUNT(*) FROM bronze_table;
