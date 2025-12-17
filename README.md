# PowerPulse
Real-Time Electricity Demand & Generation Analytics

PowerPulse
Real-Time Electricity Demand & Generation Analytics

PowerPulse is an end-to-end data engineering and analytics solution designed to monitor, analyze, and visualize real-time and historical electricity demand and generation across U.S. balancing authorities. The project integrates automated data ingestion, scalable data transformation, cloud warehousing, and interactive dashboarding to support operational intelligence and energy-sector decision-making.

## Project Overview

PowerPulse combines data from the U.S. Energy Information Administration (EIA) to deliver insights into electricity consumption, generation, forecasting accuracy, regional performance, and hourly demand patterns.
The system uses a modern data stack—Apache Airflow, Snowflake, dbt, and Power BI—to automate pipelines, manage transformations, and deliver business-ready analytics.

## Key Features

1. Automated ETL/ELT workflows using Airflow
2. Historical + Real-time data integration
3. Cloud-native data warehousing with Snowflake
4. Modular SQL transformations using dbt
5. Star-schema analytics model for fast querying
6. Interactive Power BI dashboards showing trends, regional behavior, KPIs, and heatmaps
7. Scalable and reproducible architecture suitable for production deployment

## Data Sources
1. EIA Historical Data

Source: U.S. Energy Information Administration (EIA-930)
Granularity: Hourly demand, forecast, generation, interchange
Format: JSON API
Geography: State & regional balancing authorities
Coverage: Multi-year (historical trends)


## Architecture

Orchestration – Apache Airflow
> Schedules ETL & ELT pipelines
> Extracts data from APIs
> Triggers dbt transformations
> Handles retries, logging, and monitoring
> Data Warehouse – Snowflake

RAW Layer: API ingestions
STAGING Layer: Cleaned and standardized tables
ANALYTICS Layer: Curated fact and dimension models (star schema)

Transformation – dbt
> Staging & analytics SQL models
> Automated testing (quality checks)
> Incremental processing
> Snapshot tracking for historical attributes
> Documentation & lineage generation

Visualization – Power BI
Interactive dashboards visualize:
> Daily/Hourly demand patterns
> Regional comparisons
> Forecast accuracy
> Net generation trends
> Weekday vs. weekend behavior
> Heat maps & summary matrices

## Database Schema (Star Model)

Dimensions:

* DimDate
* DimRegion
* DimSeries

Facts:

* FactRegionHourly
* FactRegionComp
* FactMovingAvg
* FactWeekdayWeekend

This structure supports flexible slicing by date, region, and metric type.

## Dashboard Insights

1. Power BI dashboards include:
2. Peak, minimum, average, and moving-average KPIs
3. Time-series line charts across series
4. Regional performance bar charts
5. Series distribution donut chart
6. Weekday/weekend summary matrix
7. Hourly heatmap for load patterns

## Tech Stack

* Apache Airflow
* Snowflake Cloud Data Warehouse
* dbt Core
* Power BI / Tableau
* Python
* REST APIs (EIA)

## Use Cases

* Grid demand forecasting
* Renewable integration monitoring
* Regional electricity market analysis
* Operational planning & reliability studies
* Anomaly detection in demand patterns
* Real-time situational awareness

## Contributors

Group Project 9

Bavishna Ashok Kumar

Elsa Rose

Kruthika Virupakshappa

Shruti Naik

