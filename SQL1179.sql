#SQL Problem1179: https://leetcode.com/problems/reformat-department-table/
Table: Department
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| revenue       | int     |
| month         | varchar |
+---------------+---------+
(id, month) is the primary key of this table.
The table has information about the revenue of each department per month.
The month has values in ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"].
Write an SQL query to reformat the table such that there is a department id column and a revenue column for each month.
The query result format is in the following example:
Department table:
+------+---------+-------+
| id   | revenue | month |
+------+---------+-------+
| 1    | 8000    | Jan   |
| 2    | 9000    | Jan   |
| 3    | 10000   | Feb   |
| 1    | 7000    | Feb   |
| 1    | 6000    | Mar   |
+------+---------+-------+

Result table:
+------+-------------+-------------+-------------+-----+-------------+
| id   | Jan_Revenue | Feb_Revenue | Mar_Revenue | ... | Dec_Revenue |
+------+-------------+-------------+-------------+-----+-------------+
| 1    | 8000        | 7000        | 6000        | ... | null        |
| 2    | 9000        | null        | null        | ... | null        |
| 3    | null        | 10000       | null        | ... | null        |
+------+-------------+-------------+-------------+-----+-------------+
Note that the result table has 13 columns (1 for the department id + 12 for the months).

------------------------------------------
#This problem requires a CASE becauase the SUM is going to vary based on each different month.
#The AS statement will select a different column everytime as a new sum based upon each month.
#Then each id must be GROUPED and ORDERED at the very end by id.

SELECT id, 
SUM(case when month="Jan" then revenue else null end) as "Jan_revenue",
SUM(case when month="Feb" then revenue else null end) as "Feb_revenue",
SUM(case when month="Mar" then revenue else null end) as "Mar_revenue",
SUM(case when month="Apr" then revenue else null end) as "Apr_revenue",
SUM(case when month="May" then revenue else null end) as "May_revenue",
SUM(case when month="Jun" then revenue else null end) as "Jun_revenue",
SUM(case when month="Jul" then revenue else null end) as "Jul_revenue",
SUM(case when month="Aug" then revenue else null end) as "Aug_revenue",
SUM(case when month="Sep" then revenue else null end) as "Sep_revenue",
SUM(case when month="Oct" then revenue else null end) as "Oct_revenue",
SUM(case when month="Nov" then revenue else null end) as "Nov_revenue",
SUM(case when month="Dec" then revenue else null end) as "Dec_revenue"
FROM department
GROUP BY id
ORDER BY id;
