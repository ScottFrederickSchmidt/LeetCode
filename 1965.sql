# Line 1 - Gets all employee_id that are not in salaries
# Line 2 - Collect data from line 3 and what will be line 5
# Line 3 - Get all employee_id that are not in employee table
# Line 4 - Sort data by employee_id

SELECT employee_id FROM employees WHERE employee_id NOT IN (SELECT employee_id FROM salaries )
UNION
SELECT employee_id FROM salaries WHERE employee_id NOT IN (SELECT employee_id FROM employees)
ORDER BY employee_id;
