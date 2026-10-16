--catalog and medallion schemas
CREATE CATALOG IF NOT EXISTS football;
CREATE SCHEMA IF NOT EXISTS football.bronze;
CREATE SCHEMA IF NOT EXISTS football.silver;
CREATE SCHEMA IF NOT EXISTS football.gold;
CREATE SCHEMA IF NOT EXISTS football.features;
-- governance (adjust group names)
-- GRANT USAGE ON CATALOG football TO `analysts`;
-- GRANT SELECT ON SCHEMA football.gold TO `analysts`;
-- GRANT ALL PRIVILEGES ON SCHEMA football.bronze TO `data_engineers`;
