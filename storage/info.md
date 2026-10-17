# Storage

## Purpose
Handles low-latency and operational persistence. Historical analytical storage is delegated to `databricks/`.

## Inputs
Live tracking/event/metric updates and operational application records.

## Outputs
Current match state for the API and optional transactional application records.

## Nested folders
- `realtime/`: Redis/live match state.
- `operational/`: optional PostgreSQL/application metadata.

## Important
Do not use application-managed Parquet files as the primary historical storage layer. Historical tracking/events/features belong in Databricks/Delta Lake.
