-- =====================================================
-- Database Systems Lab
-- Week 08 - Views
-- Department of Software Engineering, Faculty of Engineering & Technology, UoS
-- =====================================================

/*=======================================================
Question 1
Create a view called EMPLOYEES_VU based on the
employee numbers, employee names, and department
numbers from the EMPLOYEES table.
=======================================================*/

CREATE VIEW employees_vu AS
SELECT employee_id,
       last_name AS employee,
       department_id
FROM employees;


/*=======================================================
Question 2
Display the contents of the EMPLOYEES_VU view.
=======================================================*/

SELECT *
FROM employees_vu;


/*=======================================================
Question 3
Select the view name and text from the
USER_VIEWS data dictionary view.
=======================================================*/

SELECT view_name,
       text
FROM user_views;


/*=======================================================
Question 4
Display all employee names and department numbers
using EMPLOYEES_VU.
=======================================================*/

SELECT employee,
       department_id
FROM employees_vu;


/*=======================================================
Question 5
Create a view named DEPT50 that contains employee
numbers, employee last names, and department numbers
for all employees in department 50.
=======================================================*/

CREATE VIEW dept50
(empno, employee, deptno)
AS
SELECT employee_id,
       last_name,
       department_id
FROM employees
WHERE department_id = 50
WITH CHECK OPTION;


/*=======================================================
Question 6
Display the structure and contents of the DEPT50 view.
=======================================================*/

DESC dept50;

SELECT *
FROM dept50;


/*=======================================================
Question 7
Attempt to reassign Matos to department 80.
=======================================================*/

UPDATE dept50
SET deptno = 80
WHERE employee = 'Matos';


/*=======================================================
Question 8
Drop the DEPT50 view.
=======================================================*/

DROP VIEW dept50;