#User Activity for the Past 30 Days I
#1141. User Activity for the Past 30 Days I
SELECT DISTINCT activity_date as day, count(DISTINCT user_id) as active_users
FROM activity
WHERE activity_date BETWEEN date_sub('2019-07-27',interval 29 day) AND '2019-07-27'
GROUP BY activity_date;


Output: 
+------------+--------------+ 
| day        | active_users |
+------------+--------------+ 
| 2019-07-20 | 2            |
| 2019-07-21 | 2            |
+------------+--------------+ 
Explanation: Note that we do not care about days with zero active users.
