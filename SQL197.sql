#SQL Problem197:  https://leetcode.com/problems/rising-temperature/
Table: Weather
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| Id            | int     |
| RecordDate    | date    |
| Temperature   | int     |
+---------------+---------+
Id is the primary key for this table.
This table contains information about the temperature on a certain day.
Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday).
Return the result table in any order.
The query result format is in the following example.

Example 1:
Input: 
Weather table:
+----+------------+-------------+
| Id | RecordDate | Temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+
Output: 
+----+
| id |
+----+
| 2  |
| 4  |
+----+
Explanation: 
In 2015-01-02, the temperature was higher than the previous day (10 -> 25).
In 2015-01-04, the temperature was higher than the previous day (20 -> 30).
---------------------------------------------------------------

#Final Solution:
#Runtime: 517 ms, faster than 29.59% of MySQL online submissions
SELECT W1.Id
FROM Weather W1, Weather W2
WHERE DATEDIFF(W1.RecordDate,W2.RecordDate)=1
AND W1.Temperature > W2.Temperature;

#My Initial Answer. This was was getting the correct days almost everytime, but would fail at the beginning of a new month.
#Therefore, DATEDIFF is needed. 
SELECT W1.Id FROM Weather W1, Weather W2
WHERE W1.RecordDate-W2.RecordDate=1
AND W1.Temperature > W2.Temperature;
