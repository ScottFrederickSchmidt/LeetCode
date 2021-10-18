SQL Problem177: https://leetcode.com/problems/nth-highest-salary/
Table: Employee
+-------------+------+
| Column Name | Type |
+-------------+------+
| Id          | int  |
| Salary      | int  |
+-------------+------+
Id is the primary key column for this table.
Each row of this table contains information about the salary of an employee.
Write an SQL query to report the nth highest salary from the Employee table. If there is no nth highest salary, the query should report null.
The query result format is in the following example.

Example 1:
Input: 
Employee table:
+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
n = 2
Output: 
+------------------------+
| getNthHighestSalary(2) |
+------------------------+
| 200                    |
+------------------------+
Example 2:

Input: 
Employee table:
+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
+----+--------+
n = 2
Output: 
+------------------------+
| getNthHighestSalary(2) |
+------------------------+
| Null                   |
+------------------------+

-------------------------------
SOLUTION: After research on the SO link below, there was an easy to read post that helped:
https://stackoverflow.com/questions/16568/how-to-select-the-nth-row-in-a-sql-database-table

#Runtime: 388 ms, faster than 32.14% of MySQL online submissions for Nth Highest Salary:
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
 SET N=N-1;
  RETURN (  
      SELECT  IFNULL(
          (SELECT salary FROM employee
        ORDER BY salary DESC
      LIMIT 1 OFFSET N), NULL)
  );
END


#NOTES:
#The N value must minus one because it grabs the second highest salary.
#DESC must be used so the salaries go from high to low. ASC is default. 
