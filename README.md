
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

**Key Technologies**
The pipeline leverages the following technologies:

* Azure Databricks
* Delta Lake
* Azure Data Lake Gen2
* Azure Data Factory
* Azure Synapse Analytics
* Python

**Project snaps:**
![image](https://github.com/user-attachments/assets/8e33bbba-2d98-48c6-aa49-8165b2a6c076)
![image](https://github.com/user-attachments/assets/53393513-6535-4f8a-bb8a-2d04b4de2efb)
![image](https://github.com/user-attachments/assets/aa9797c7-322c-43d2-9458-b6eab873cf12)
![image](https://github.com/user-attachments/assets/9676396c-fbc6-4b1d-80a7-f9a895388d97)
![image](https://github.com/user-attachments/assets/a738e342-a51a-4765-b973-a0a6a21a0d45)
![image](https://github.com/user-attachments/assets/a675558d-cf1d-40fe-982d-4cce5d885d05)
