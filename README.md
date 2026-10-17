
![Skemalytic Sports Analytics Logo](https://res.cloudinary.com/wgsj17do/image/upload/v1792140877/Skemalytic_Sports_Analytics_Logo.png)

# Skemalytic

*sports analytics on demand*

> **Note:** Development version of a football analytics pipeline that generates statistics based on a video.

Analytics systems usually track two kinds of information during football matches:

1. **Event data** – what happened (pass, shot, goal, foul).
2. **Tracking data** – where players and the ball are on the pitch.

## Folder Structure

The contents of each of the folders are as follows:

### `analytics`
Aggregations of event logs and high frequency tracking data into high-level metrics eg touches in the box, heatmaps, posession, completed passes.
1. **Input:** Redis live state and PostgreSQL/analytics results.
2. **Output:** Payload responses and JSON streams( JSON/WebSockets) consumed by a dashboard.

### `api`
Endpoints and WebSockets that provide live statistics.
1. **Input:** Redis live state and PostgreSQL/analytics results.
2. **Output:** Payload responses and JSON streams( JSON/WebSockets) consumed by a dashboard.

### `dashboard`
Frontend application for visualizing both live and historical analytics.
1. **Input:** Websockets and endpoints served by /api
2. **Output:** Visual user interface

### `databricks`
Datalakehouse architecture using the medallion architecture. Contains databricks-specific data platform layer.
1. **Input:** structured tracking/event outputs from the pipeline ie /storage.
2. **Output:** bronze/silver/gold delta data, enterprise ML features,

### `detection`
1. **Input:**
2. **Output:** 

### `events`
1. **Input:**
2. **Output:** 

### `models`
1. **Input:**
2. **Output:** 

### `pitch`
1. **Input:**
2. **Output:** 

### `possession`
1. **Input:**
2. **Output:** 

### `storage`
1. **Input:**
2. **Output:** 

### `teams`
1. **Input:**
2. **Output:** 

### `tracking`
1. **Input:**
2. **Output:** 
