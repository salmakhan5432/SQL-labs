-- =========================================
-- Week 2 - Selection Operation & ORDER BY
-- Database Systems Lab
-- =========================================


-- =========================================
-- PART 1: WHERE CLAUSE PRACTICE
-- =========================================

-- 1. Display the last name and salary of employees earning more than $12,000.

SELECT last_name, salary
FROM employees
WHERE salary > 12000;


-- 3. Display the last name and salary for employees whose salary is not between $5000 and $12000.

SELECT last_name, salary
FROM employees 
WHERE salary NOT BETWEEN 5000 AND 12000;


-- 2. Display the last name and department id for the employee whose employee id is 176.

SELECT last_name, department_id 
FROM employees
WHERE employee_id = 176;


-- 4. Display last name, job id, and hire date of employees hired between Feb 20, 1998 and May 1, 1998.

SELECT last_name, job_id, hire_date
FROM employees
WHERE hire_date BETWEEN '02-20-2003' AND '12-12-2005'; 


-- 5. Display last name and department id of employees in departments 10, 20, 30, and 50.

SELECT last_name, department_id
FROM employees
WHERE department_id IN (10,20,30,50);


-- 6. Display employees working in departments except 10, 20, 30, and 50.

SELECT *
FROM employees
WHERE department_id NOT IN (10,20,30,50);


-- =========================================
-- PART 2: PATTERN MATCHING & NULL
-- =========================================

-- 1. Display names of employees whose names start with 'K'.

SELECT first_name 
FROM employees
WHERE fist_Name LIKE 'K%';


-- 2. Display last names that end with 'r'.

SELECT last_name
FROM employees
WHERE last_name LIKE '%r';


-- 3. Display names where the third letter of last name is 'a'.

SELECT last_name 
FROM employees
WHERE last_name LIKE '__a%';


-- 4. Display last names containing 'e' or 'E'.

SELECT last_name
FROM employees
WHERE last_name LIKE '%e%' 
OR last_name LIKE '%E%';


-- 5. Display last name and job id of employees without a manager.

SELECT last_name, job_id 
FROM employees
WHERE manager_id IS NULL;


-- 6. Display last name, salary, and commission of employees earning commission.

SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL;


-- 7. Display employees hired in May or December.

SELECT *
FROM employees
WHERE hire_date LIKE '05%'
OR hire_date LIKE '12%';


-- =========================================
-- PART 3: ORDER BY CLAUSE
-- =========================================

-- 1. Display last name and commission for employees earning commission
-- sorted by salary and commission descending.

SELECT last_name, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY salary DESC, commission_pct DESC;


-- 2. Display last name, job id, hire date ordered by hire date ascending.

SELECT last_name, job_id, hire_date
FROM employees
ORDER BY hire_date ASC; 


/*
3. Display last name and department number of employees in departments
20 and 50 ordered alphabetically.
*/

SELECT last_name, department_id
FROM employees
WHERE department_id IN (20, 50)
ORDER BY last_name ASC;