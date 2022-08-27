#https://leetcode.com/problems/game-play-analysis-i/
#SQL 511
SELECT player_id, min(event_date) AS "first_login" 
FROM Activity
GROUP BY 1;
