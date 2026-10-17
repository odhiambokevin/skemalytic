## DESCRIPTION
Manages local and cloud persistent storage integrations—Parquet/Polars engines for local processing, PostgreSQL/Redis for real-time live match state, and Databricks SQL Connector for Lakehouse Sync.

## PIPELINE RELATIONSHIP
- **input**: Tracking matrices from `/pitch`, raw events from `/events`, and derived metrics from `/analytics`.
- **output**: High-performance data queries and cloud syncing with Databricks Delta Lake.
