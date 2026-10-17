
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
1. **Input:** video frames.
2. **Output:** bounding boxes, classes and confidence scores.

### `events`
1. **Input:** pitch coordinates, tracking, team identity and possession state.
2. **Output:** structured event records.

### `models`
non-detector ML model artifacts and organization for event detection, team identification and pitch calibration.

### `pitch`
1. **Input:** tracked pixel coordinates.
2. **Output:** x/y pitch coordinates and geometric zones.

### `possession`
1. **Input:** ball/player pitch coordinates and team identities.
2. **Output:** possession state and duration.

### `schemas`
Shared application-level data contracts.
1. **Input:** definitions for tracking, events, match metadata and derived metrics.
2. **Output:** consistent record structures shared across pipeline components and the Databricks ingestion boundary.

### `storage`
1. **Input:** tracking, event and derived metric records.
2. **Output:** low-latency local storage/query interfaces and handoff to Databricks ingestion.

### `teams`
1. **Input:** player crops and tracking IDs.
2. **Output:** team identity associated with tracked players.

### `tracking`
1. **Input:** detection bounding boxes and confidences.
2. **Output:** frame-level trajectories with persistent IDs.

### `video`
1. **Input:** raw match video.
2. **Output:** frames consumed by detection.

