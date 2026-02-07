-- =========================================================
-- PROJECT: bigquery-486416
-- DATASET: ny_taxi
-- SOURCE TABLES (already uploaded):
-- NYC_Taxi_Jan
-- NYC_Taxi_Feb
-- NYC_Taxi_March
-- NYC_Taxi_Apr
-- NYC_Taxi_May
-- NYC_Taxi_June
-- =========================================================


-- 2. QUESTION 1: TOTAL RECORD COUNT
SELECT COUNT(*) AS total_records
FROM `bigquery-486416.ny_taxi.yellow_taxi_2024`;


-- 3. QUESTION 2 (PARTIAL): DISTINCT PICKUP LOCATIONS
SELECT COUNT(DISTINCT PULocationID) AS distinct_pu_locations
FROM `bigquery-486416.ny_taxi.yellow_taxi_2024`;


-- 4. QUESTION 3: COLUMNAR STORAGE TEST
-- ONE COLUMN
SELECT PULocationID
FROM `bigquery-486416.ny_taxi.yellow_taxi_2024`;

-- TWO COLUMNS
SELECT PULocationID, DOLocationID
FROM `bigquery-486416.ny_taxi.yellow_taxi_2024`;


-- 5. QUESTION 4: FARE AMOUNT = 0
SELECT COUNT(*) AS zero_fare_trips
FROM `bigquery-486416.ny_taxi.yellow_taxi_2024`
WHERE fare_amount = 0;


-- 6. QUESTION 5: CREATE OPTIMIZED TABLE (PARTITION + CLUSTER)
CREATE OR REPLACE TABLE `bigquery-486416.ny_taxi.yellow_taxi_optimized`
PARTITION BY DATE(tpep_dropoff_datetime)
CLUSTER BY VendorID
AS
SELECT *
FROM `bigquery-486416.ny_taxi.yellow_taxi_2024`;


-- 7. QUESTION 6: PARTITION BENEFIT COMPARISON
-- NON-PARTITIONED
SELECT DISTINCT VendorID
FROM `bigquery-486416.ny_taxi.yellow_taxi_2024`
WHERE DATE(tpep_dropoff_datetime)
BETWEEN '2024-03-01' AND '2024-03-15';

-- PARTITIONED + CLUSTERED
SELECT DISTINCT VendorID
FROM `bigquery-486416.ny_taxi.yellow_taxi_optimized`
WHERE DATE(tpep_dropoff_datetime)
BETWEEN '2024-03-01' AND '2024-03-15';


-- 8. QUESTION 9 (NO POINTS): FULL TABLE SCAN
SELECT COUNT(*)
FROM `bigquery-486416.ny_taxi.yellow_taxi_2024`;
