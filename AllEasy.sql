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

https://leetcode.com/problems/sales-person/
SELECT s.name 
FROM salesperson s
WHERE s.sales_id NOT IN (
    SELECT o.sales_id 
    FROM orders o
    INNER JOIN company c
    ON o.com_id = c.com_id
    WHERE c.name = 'RED'
);

# https://leetcode.com/problems/sales-analysis-iii/
SELECT product.product_id, product.product_name FROM product
INNER JOIN sales 
ON product.product_id=sales.product_id
GROUP BY sales.product_id
HAVING min(sales.sale_date) >= "2019-01-01"
AND max(sales.sale_date) <="2019-03-31";

SELECT DISTINCT (author_id) as id 
FROM views
WHERE author_id=viewer_id
order by id asc;
