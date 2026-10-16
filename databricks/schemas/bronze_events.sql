--bronze: raw football events. append-only.
CREATE TABLE IF NOT EXISTS football.bronze.events (
  match_id STRING, ts TIMESTAMP, team STRING, player_id STRING, event STRING,
  x DOUBLE, y DOUBLE, target_player STRING, outcome STRING,
  _source_file STRING, _ingested_at TIMESTAMP
) USING DELTA;
