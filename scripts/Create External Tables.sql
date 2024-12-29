-- Create master key
CREATE MASTER KEY ENCRYPTION BY PASSWORD ='Shankar@123';

-- Create external credentials
CREATE DATABASE SCOPED CREDENTIAL cred_shankar
WITH 
    IDENTITY = 'MANAGED IDENTITY';

--Create external datasources
CREATE EXTERNAL DATA SOURCE source_silver
WITH
    (
        LOCATION = 'https://adventureworksshankardl.dfs.core.windows.net/silver',
        CREDENTIAL = cred_shankar
    );


CREATE EXTERNAL DATA SOURCE source_gold
WITH
    (
        LOCATION = 'https://adventureworksshankardl.dfs.core.windows.net/gold',
        CREDENTIAL = cred_shankar
    );

--Create external file format
CREATE EXTERNAL FILE FORMAT file_format_parquet
WITH (
        FORMAT_TYPE = PARQUET,
        DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
    );

--Create external tabels
-----------------------
-- Table - ext_calender
-----------------------
CREATE EXTERNAL TABLE gold.ext_calender
WITH
(
    LOCATION = 'ext_calender',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = file_format_parquet
)
AS
SELECT * FROM gold.calender;

-----------------------
-- Table - ext_customers
-----------------------
CREATE EXTERNAL TABLE gold.ext_customers
WITH
(
    LOCATION = 'ext_customers',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = file_format_parquet
)
AS
SELECT * FROM gold.customers;

-----------------------
-- Table - ext_productcategories
-----------------------
CREATE EXTERNAL TABLE gold.ext_productcategories
WITH
(
    LOCATION = 'ext_productcategories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = file_format_parquet
)
AS
SELECT * FROM gold.productcategories;

-----------------------
-- Table - ext_productsubcategories
-----------------------
CREATE EXTERNAL TABLE gold.ext_productsubcategories
WITH
(
    LOCATION = 'ext_productsubcategories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = file_format_parquet
)
AS
SELECT * FROM gold.productsubcategories;

-----------------------
-- Table - ext_products
-----------------------
CREATE EXTERNAL TABLE gold.ext_products
WITH
(
    LOCATION = 'ext_products',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = file_format_parquet
)
AS
SELECT * FROM gold.products;

-----------------------
-- Table - ext_returns
-----------------------
CREATE EXTERNAL TABLE gold.ext_returns
WITH
(
    LOCATION = 'ext_returns',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = file_format_parquet
)
AS
SELECT * FROM gold.returns;


-----------------------
-- Table - ext_sales
-----------------------
CREATE EXTERNAL TABLE gold.ext_sales
WITH
(
    LOCATION = 'ext_sales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = file_format_parquet
)
AS
SELECT * FROM gold.sales;

-----------------------
-- Table - ext_territories
-----------------------
CREATE EXTERNAL TABLE gold.ext_territories
WITH
(
    LOCATION = 'ext_territories',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = file_format_parquet
)
AS
SELECT * FROM gold.territories;

--------------------------------------
SELECT TOP 2 * FROM gold.ext_calender;
SELECT TOP 2 * FROM gold.ext_customers;
SELECT TOP 2 * FROM gold.ext_productcategories;
SELECT top 2 * FROM gold.ext_productsubcategories;
SELECT TOP 2 * FROM gold.ext_products;
SELECT TOP 2 * FROM gold.ext_returns;
SELECT TOP 2 * FROM gold.ext_sales;
SELECT TOP 2 * FROM gold.ext_territories;



























































