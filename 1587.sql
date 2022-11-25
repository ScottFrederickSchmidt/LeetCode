# https://leetcode.com/problems/bank-account-summary-ii/solutions/2578691/bank-account-summary-ii-solution-sql/
SELECT users.name, SUM(transactions.amount) as balance
FROM users
RIGHT JOIN transactions
ON users.account = transactions.account
GROUP BY transactions.account
HAVING balance>10000;
