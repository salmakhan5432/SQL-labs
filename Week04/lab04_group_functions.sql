-- =====================================================
-- Database Systems Lab
-- Week 04 - Group Functions
-- Department of Software Engineering
-- University of Sindh
-- =====================================================

/*=======================================================
Question 1
Display the highest, lowest, sum, and average salary of
all employees. Label the columns Maximum, Minimum,
Sum, and Average, respectively.
=======================================================*/

SELECT MAX(salary) AS "Maximum",
       MIN(salary) AS "Minimum",
       SUM(salary) AS "Sum",
       AVG(salary) AS "Average"
FROM employees;


/*=======================================================
Question 2
Write a query to display the number of people with the
same job.
=======================================================*/

SELECT job_id,
       COUNT(*) AS "Number of People"
FROM employees
GROUP BY job_id;


/*=======================================================
Question 3
Display the manager number and the salary of the
lowest paid employee for that manager.

Exclude anyone whose manager is not known.
Exclude any groups where the minimum salary is
$6,000 or less.
Sort the output in descending order of salary.
=======================================================*/

SELECT manager_id,
       MIN(salary) AS "Lowest Salary"
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING MIN(salary) > 6000
ORDER BY "Lowest Salary" DESC;


/*=======================================================
Question 4
Display each department's name, location, number of
employees, and the average salary for all employees
in that department.

Label the columns:
Name
Location
Number of People
Salary
=======================================================*/

SELECT d.department_name AS "Name",
       l.city AS "Location",
       COUNT(e.employee_id) AS "Number of People",
       ROUND(AVG(e.salary), 2) AS "Salary"
FROM departments d
JOIN employees e
ON d.department_id = e.department_id
JOIN locations l
ON d.location_id = l.location_id
GROUP BY d.department_name, l.city;
