#https://leetcode.com/problems/game-play-analysis-i/
#SQL 511
SELECT player_id, min(event_date) AS "first_login" 
FROM Activity
GROUP BY 1;


#https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/
#SQL 586
SELECT customer_number 
FROM orders
GROUP BY customer_number
order by count(customer_number)
DESC LIMIT 1;


#https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/
#SQL 1050
SELECT a.actor_id, a.director_id
FROM ActorDirector a
GROUP BY a.actor_id, a.director_id
HAVING count(*)>2;


#https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/
#SQL 1581
SELECT customer_id, count(visit_id) as 'count_no_trans'
FROM visits 
WHERE visit_id NOT IN (select distinct transactions.visit_id from transactions)
GROUP BY customer_id ORDER BY count_no_trans;
