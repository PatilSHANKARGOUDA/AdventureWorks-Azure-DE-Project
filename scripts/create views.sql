--Create database
CREATE DATABASE awdatabase;

CREATE SCHEMA gold;

--View calender
CREATE VIEW gold.Calender
AS
SELECT * 
FROM OPENROWSET
(
    BULK 'https://adventureworksshankardl.dfs.core.windows.net/silver/AdventureWorks/Calendar/',
    FORMAT = 'PARQUET'
) AS query1

-- View Customers
CREATE VIEW gold.Customers
AS
SELECT * 
FROM OPENROWSET
(
    BULK 'https://adventureworksshankardl.dfs.core.windows.net/silver/AdventureWorks/Customers/',
    FORMAT = 'PARQUET'
) AS query1

--View ProductCategories
CREATE VIEW gold.ProductCategories
AS
SELECT * 
FROM OPENROWSET
(
    BULK 'https://adventureworksshankardl.dfs.core.windows.net/silver/AdventureWorks/ProductCategories/',
    FORMAT = 'PARQUET'
) AS query1

--View ProductSubcategories
CREATE VIEW gold.ProductSubcategories
AS
SELECT * 
FROM OPENROWSET
(
    BULK 'https://adventureworksshankardl.dfs.core.windows.net/silver/AdventureWorks/ProductSubcategories/',
    FORMAT = 'PARQUET'
) AS query1

--View Products
CREATE VIEW gold.Products
AS
SELECT * 
FROM OPENROWSET
(
    BULK 'https://adventureworksshankardl.dfs.core.windows.net/silver/AdventureWorks/Products/',
    FORMAT = 'PARQUET'
) AS query1

--View Returns
CREATE VIEW gold.Returns
AS
SELECT * 
FROM OPENROWSET
(
    BULK 'https://adventureworksshankardl.dfs.core.windows.net/silver/AdventureWorks/Returns/',
    FORMAT = 'PARQUET'
) AS query1

--View Sales
CREATE VIEW gold.Sales
AS
SELECT * 
FROM OPENROWSET
(
    BULK 'https://adventureworksshankardl.dfs.core.windows.net/silver/AdventureWorks/Sales/',
    FORMAT = 'PARQUET'
) AS query1

--View Territories
CREATE VIEW gold.Territories
AS
SELECT * 
FROM OPENROWSET
(
    BULK 'https://adventureworksshankardl.dfs.core.windows.net/silver/AdventureWorks/Territories/',
    FORMAT = 'PARQUET'
) AS query1

--Fetching values via views
SELECT TOP 2 * FROM gold.Calender;
SELECT TOP 2 * FROM gold.Customers;
SELECT TOP 2 * FROM gold.ProductCategories;
SELECT TOP 2 * FROM gold.ProductSubcategories;
SELECT TOP 2 * FROM gold.Products;
SELECT TOP 2 * FROM gold.Returns;
SELECT TOP 2 * FROM gold.Sales;
SELECT TOP 2 * FROM gold.Territories;











