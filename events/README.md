# Events
Detects football events including touches, passes, shots and carries using deterministic
rules first and temporal ML where rules become unreliable.
**Input:** Player/ball pitch coordinates from `/pitch`, tracking, team identity from `/teams` and possession state from `/possession`.
**Output:** structured event records sent to analytics and both real-time storage and
the Databricks ingestion boundary sent to `/analytics` and `/storage`.
