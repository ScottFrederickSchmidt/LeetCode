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
