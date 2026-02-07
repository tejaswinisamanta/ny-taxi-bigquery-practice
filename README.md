# NYC Taxi Data – BigQuery Practice

This repository contains my practice work using Google BigQuery
(Sandbox mode) with the NYC Yellow Taxi dataset (Jan–Jun 2024).

## Repository Structure

```text
ny-taxi-bigquery-practice/
│
├── bigquery/
│   ├── 01_combine_tables.sql
│   ├── 02_analysis_queries.sql
│   └── notes.md
│
├── README.md
└── .gitignore
```

## Tools
- Google BigQuery (Sandbox)

## Data
For this homework we used the Yellow Taxi Trip Records 
for January 2024 - June 2024 (not the entire year of data).

Parquet Files are available from the New York City Taxi Data found here:
```
https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page
```

## What I Did
- Uploaded monthly Parquet files
- Combined them into a single table
- Ran analytical SQL queries
- Explored columnar storage behavior and query cost estimation

## Limitations
- External tables were not used because BigQuery Sandbox
  does not allow Cloud Storage access without billing

## Status
Data Engineering Zoomcamp - Week 3 : Complete
