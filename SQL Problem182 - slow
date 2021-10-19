#https://leetcode.com/problems/duplicate-emails/
Table: Person
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| Id          | int     |
| Email       | varchar |
+-------------+---------+
Id is the primary key column for this table.
Each row of this table contains an email. The emails will not contain uppercase letters.
Write an SQL query to report all the duplicate emails.
Return the result table in any order.
The query result format is in the following example.

Example 1:
Input: 
Person table:
+----+---------+
| Id | Email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+
Output: 
+---------+
| Email   |
+---------+
| a@b.com |
+---------+
Explanation: a@b.com is repeated two times.
-----------------------------------------------------
#Slow runtime solution: 978 ms, faster than 5.00% of MySQL online submissions for Duplicate Emails.

SELECT email FROM Person 
GROUP BY email
HAVING COUNT(*)>1;

-----------------------------------------------------
#My first initial attempt only got partial credit being correct.
SELECT email FROM Person 
HAVING COUNT(*) > 1;
#I needed to add in GROUP BY email
