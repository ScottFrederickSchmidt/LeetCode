This problem is considered a medium problem even though it has a high solve rate. 
Once someone knows how to use a CASE statement the problem becomes 'easy':
https://www.w3schools.com/sql/sql_case.asp

# https://leetcode.com/problems/capital-gainloss/description/
SELECT stock_name, sum(CASE when operation='sell' THEN price else 0 END) - sum(CASE when operation='buy' THEN price else 0 END)
as capital_gain_loss
FROM stocks
GROUP BY stock_name;
