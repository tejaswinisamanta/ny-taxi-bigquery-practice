-- 1. COMBINE ALL MONTHS INTO ONE TABLE
CREATE OR REPLACE TABLE `bigquery-486416.ny_taxi.yellow_taxi_2024`
AS
SELECT * FROM `bigquery-486416.ny_taxi.NYC Taxi Jan`
UNION ALL
SELECT * FROM `bigquery-486416.ny_taxi.NYC Taxi Feb`
UNION ALL
SELECT * FROM `bigquery-486416.ny_taxi.NYC Taxi March`
UNION ALL
SELECT * FROM `bigquery-486416.ny_taxi.NYC Taxi Apr`
UNION ALL
SELECT * FROM `bigquery-486416.ny_taxi.NYC Taxi May`
UNION ALL
SELECT * FROM `bigquery-486416.ny_taxi.NYC Taxi June`;
