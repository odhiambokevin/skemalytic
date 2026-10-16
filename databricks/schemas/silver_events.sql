--silver: standardised events with pitch coordinates and zone.
CREATE TABLE IF NOT EXISTS football.silver.events (
  match_id STRING, ts TIMESTAMP, team STRING, player_id STRING, event STRING,
  x_m DOUBLE, y_m DOUBLE, zone STRING, in_opp_box BOOLEAN,
  target_player STRING, outcome STRING
) USING DELTA PARTITIONED BY (match_id);
