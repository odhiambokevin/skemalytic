--silver: validated tracking in standard pitch coordinates (metres), plus derived acceleration.
CREATE TABLE IF NOT EXISTS football.silver.tracking (
  match_id STRING, ts TIMESTAMP, player_id STRING, team STRING,
  x_m DOUBLE, y_m DOUBLE, vx DOUBLE, vy DOUBLE, acceleration DOUBLE,
  zone STRING, confidence DOUBLE
) USING DELTA PARTITIONED BY (match_id);
