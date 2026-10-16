--team possession and pass completion per match
SELECT match_id, team, possession_pct, pass_completion_pct, touches_in_opp_box, final_third_entries
FROM football.gold.match_stats ORDER BY match_id, team;
