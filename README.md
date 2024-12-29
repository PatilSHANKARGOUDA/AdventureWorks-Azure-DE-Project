
# Data Pipeline for Adventure Works Data Analysis

**Overview**

This repository contains the code and resources for a data pipeline that analyzes Adventure Works data using Azure Databricks and Delta Lake. The pipeline ingests raw data, transforms it, and stores it in Delta Lake for subsequent analysis and reporting.

**Architecture**

![image](https://github.com/user-attachments/assets/f731b42e-d574-46b0-8d97-00b9b2ee394d)

The pipeline follows a three-stage architecture:

**1. Ingestion:**

Raw data is ingested from the Adventure Works source (e.g., database or flat files) into a raw data store in Data Lake Gen2.
Azure Data Factory is used to orchestrate the ingestion process.

**2. Transformation:**

Data is transformed using Databricks notebooks with Spark SQL and Python.
Transformations include:
Data cleaning
Filtering records
Aggregating data for analysis
Transformed data is stored in Parquet format in Data Lake Gen2.

**3. Serving:**

Transformed data is optimized for serving using Delta Lake features such as ACID transactions and schema evolution.
Data is stored in Delta Lake format in Data Lake Gen2 for high-performance analysis and reporting.
