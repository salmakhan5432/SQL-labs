-- =====================================================
-- Database Systems Lab
-- Week 06 - Subqueries
-- Department of Software Engineering, Faculty of Engineering & Technology, UoS
-- =====================================================

/*=======================================================
Question 1
Write a query to display the last name and hire date
of any employee in the same department as Zlotkey.
=======================================================*/

SELECT last_name,
       hire_date
FROM employees
WHERE department_id = (
    SELECT department_id
    FROM employees
    WHERE last_name = 'Zlotkey'
);


/*=======================================================
Question 2
Create a query to display the employee numbers and
last names of all employees who earn more than the
average salary.

Sort the results in ascending order of salary.
=======================================================*/

SELECT employee_id,
       last_name,
       salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
)
ORDER BY salary ASC;


/*=======================================================
Question 3
Display the last name, department number, and job ID
of all employees whose department location ID is 1700.
=======================================================*/

SELECT last_name,
       department_id,
       job_id
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE location_id = 1700
);


/*=======================================================
Question 4
Display the last name and salary of every employee
who reports to King.
=======================================================*/

SELECT last_name,
       salary
FROM employees
WHERE manager_id = (
    SELECT employee_id
    FROM employees
    WHERE last_name = 'King'
);


/*=======================================================
Question 5
Display the department number, last name, and job ID
for every employee in the Executive department.
=======================================================*/

SELECT department_id,
       last_name,
       job_id
FROM employees
WHERE department_id = (
    SELECT department_id
    FROM departments
    WHERE department_name = 'Executive'
);