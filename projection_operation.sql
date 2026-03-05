-- File: projection_operation.sql
-- Author: Salma Khan
-- Description: Contains projection operation queries on EMPLOYEES and DEPARTMENTS tables in Oracle SQL

-- =============================
-- DEPARTMENTS Table Queries
-- ==========================

-- This query Show the structure of the DEPARTMENTS table (use describe command).
DESCRIBE departments;

-- This query retrives all data from the DEPARTMENTS table.
SELECT *
FROM departments;

-- =============================
-- EMPLOYEES Table Queries
-- =============================

/*
Query the EMPLOYEES table to display the employee_id, last name, job id and
hire date for each employee. 
*/
SELECT employee_id, last_name, job_id, hire_date
FROM employees;

/*
In the previous query (#3), name the column headings Emp #, Employee, Job,
and Hire Date, respectively.
*/
SELECT employee_id AS "EMP #", 
       last_name AS "Employee", 
       job_id AS "Job", 
       hire_date AS "Hire Date"
FROM employees;
/*
Display the last name concatenated with the job ID, separated by a comma and
space, and name the column Employee and Title.
*/
SELECT last_name || ' , ' || job_id AS "Employees and Title"
FROM employees;

-- This query retrives all unique department_id from employees table.
SELECT DISTINCT department_id
FROM employees;

/*
Show last name and commission percentage of all employees by increasing
commission with 2%. (Multiply commission_pct with 0.2) for all employees.
*/
SELECT last_name, (commission_pct * 0.2) AS "Commission"
FROM employees