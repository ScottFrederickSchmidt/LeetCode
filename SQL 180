Table: Logs
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| num         | varchar |
+-------------+---------+
id is the primary key for this table.
Write an SQL query to find all numbers that appear at least three times consecutively.
Return the result table in any order.
The query result format is in the following example.

Example 1:
Input: 
Logs table:
+----+-----+
| Id | Num |
+----+-----+
| 1  | 1   |
| 2  | 1   |
| 3  | 1   |
| 4  | 2   |
| 5  | 1   |
| 6  | 2   |
| 7  | 2   |
+----+-----+
Output: 
+-----------------+
| ConsecutiveNums |
+-----------------+
| 1               |
+-----------------+
Explanation: 1 is the only number that appears consecutively for at least three times.
------------------------------------


One must create three numbers n1, n2, and n3. 
n1.id=n2.id-1 AND n2.id = n3.id-1 would verify that three numbers are in a row.
Then, the AND n1.Num = n2.Num verifies the numbers are the same.
Distinct must be used because the same number should not appear multiple times.

#FINAL SOLUTION: Runtime: 596 ms, faster than 19.34% of MySQL online submissions for Consecutive Numbers.
SELECT 
DISTINCT n1.Num AS ConsecutiveNums
FROM 
Logs n1, 
Logs n2,
Logs n3
WHERE 
n1.id=n2.id-1
AND n2.id = n3.id-1
AND n1.Num = n2.Num
AND n2.Num = n3.Num;


