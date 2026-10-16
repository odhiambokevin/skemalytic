--gold: per-match, per-team statistics for dashboards and ML.
CREATE TABLE IF NOT EXISTS football.gold.match_stats (
  match_id STRING, team STRING,
  possession_seconds DOUBLE, possession_pct DOUBLE,
  passes_attempted INT, passes_completed INT, pass_completion_pct DOUBLE,
  touches_in_opp_box INT, final_third_entries INT, distance_covered_m DOUBLE
) USING DELTA;
