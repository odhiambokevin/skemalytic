--bronze: raw tracking observations (high frequency). append-only.
CREATE TABLE IF NOT EXISTS football.bronze.tracking (
  match_id STRING, ts TIMESTAMP, player_id STRING, team STRING,
  x DOUBLE, y DOUBLE, vx DOUBLE, vy DOUBLE, confidence DOUBLE,
  _source_file STRING, _ingested_at TIMESTAMP
) USING DELTA;
