# https://leetcode.com/problems/top-travellers/solutions/2576777/mysql-left-join/
SELECT u.name , IFNULL(SUM(r.distance), 0) AS travelled_distance  
From Users u  LEFT JOIN RIDES r
ON u.id = r.user_id
GROUP BY u.id
ORDER BY travelled_distance DESC, u.name;

# Must use LEFT JOIN to match rides with users. A zero must be filled in the event there is no match. 
