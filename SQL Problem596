#SQL Problem596: https://leetcode.com/problems/classes-more-than-5-students/
There is a table courses with columns: student and class
Please list out all classes which have more than or equal to 5 students.
For example, the table:
+---------+------------+
| student | class      |
+---------+------------+
| A       | Math       |
| B       | English    |
| C       | Math       |
| D       | Biology    |
| E       | Math       |
| F       | Computer   |
| G       | Math       |
| H       | Math       |
| I       | Math       |
+---------+------------+
Should output:
+---------+
| class   |
+---------+
| Math    |
+---------+
Note:
The students should not be counted duplicate in each course.
----------------------------------------------------------
SOLUTION: Runtime: 273 ms, faster than 58.32% of MySQL online submissions for Classes More Than 5 Students.
Must remeber to use a GROUP BY. Otherwise, this is a very easy problem.

SELECT class FROM courses
GROUP BY class
HAVING COUNT(class)>=5;

