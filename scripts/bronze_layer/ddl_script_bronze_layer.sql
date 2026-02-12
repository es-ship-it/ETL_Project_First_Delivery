-- ==========================================================
-- Bronze Layer Table
-- Description:
-- This table stores the raw vaccination dataset ingested
-- from the original CSV file. 
CREATE TABLE bronze_table (
id INT AUTO_INCREMENT PRIMARY KEY,
zona INT,
region VARCHAR(50),
provincia VARCHAR(50),
provincia_poblacion INT,
canton VARCHAR(50),
canton_poblacion INT,
dosis_total INT,
primera_dosis INT,
segunda_dosis INT,
dosis_unica INT,
dosis_refuerzo INT,
lat VARCHAR(50),
lng VARCHAR(50),
created_at VARCHAR(50)
);
