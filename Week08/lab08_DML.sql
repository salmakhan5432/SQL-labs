-- =====================================================
-- Database Systems Lab
-- Week 09 - Data Definition Language (DDL)
-- Department of Software Engineering, Faculty of Engineering & Technology, UoS
-- =====================================================

/*=======================================================
Question 1
Create the DEPT table and confirm that it is created.
=======================================================*/

CREATE TABLE dept (
    deptno NUMBER(4),
    dname  VARCHAR2(30),
    loc    VARCHAR2(30)
);

DESC dept;


/*=======================================================
Question 2
Populate the DEPT table with data from the
DEPARTMENTS table.
=======================================================*/

INSERT INTO dept (deptno, dname, loc)
SELECT department_id,
       department_name,
       location_id
FROM departments;


/*=======================================================
Question 3
Create the EMP table and confirm that it is created.
=======================================================*/

CREATE TABLE emp (
    id         NUMBER(6),
    last_name  VARCHAR2(25),
    first_name VARCHAR2(25),
    deptno     NUMBER(4)
);

DESC emp;


/*=======================================================
Question 4
Modify the EMP table to allow longer employee
last names and confirm the modification.
=======================================================*/

ALTER TABLE emp
MODIFY (last_name VARCHAR2(50));

DESC emp;


/*=======================================================
Question 5
Confirm that both DEPT and EMP tables are stored
in the data dictionary.
=======================================================*/

SELECT table_name
FROM user_tables
WHERE table_name IN ('DEPT', 'EMP');


/*=======================================================
Question 6
Create the EMPLOYEES2 table based on the
EMPLOYEES table.
=======================================================*/

CREATE TABLE employees2 AS
SELECT employee_id AS id,
       first_name,
       last_name,
       salary,
       department_id AS dept_id
FROM employees;


/*=======================================================
Question 7
Drop the EMP table.
=======================================================*/

DROP TABLE emp;


/*=======================================================
Question 8
Rename the EMPLOYEES2 table as EMP.
=======================================================*/

RENAME employees2 TO emp;


/*=======================================================
Question 9
Drop the FIRST_NAME column from the EMP table
and confirm the modification.
=======================================================*/

ALTER TABLE emp
DROP COLUMN first_name;

DESC emp;