-- =====================================================
-- Database Systems Lab
-- Week 07 - DML (Data Manipulation Language)
-- Department of Software Engineering, Faculty of Engineering & Technology, UoS
-- =====================================================

/*=======================================================
Question 1
Build the MY_EMPLOYEE table to be used for the lab.
=======================================================*/

CREATE TABLE my_employee (
    id         NUMBER(4),
    last_name  VARCHAR2(25),
    first_name VARCHAR2(25),
    userid     VARCHAR2(8),
    salary     NUMBER(9,2)
);


/*=======================================================
Question 2
Add the first row of data to the MY_EMPLOYEE table.
Do not list the columns in the INSERT clause.
=======================================================*/

INSERT INTO my_employee
VALUES (1, 'Patel', 'Ralph', 'rpatel', 895);


/*=======================================================
Question 3
Populate the MY_EMPLOYEE table with the second row.
List the columns explicitly in the INSERT clause.
=======================================================*/

INSERT INTO my_employee
(id, last_name, first_name, userid, salary)
VALUES
(2, 'Dancs', 'Betty', 'bdancs', 860);


/*=======================================================
Question 4
Populate the table with the next two rows.
=======================================================*/

INSERT INTO my_employee
VALUES (3, 'Biri', 'Ben', 'bbiri', 1100);

INSERT INTO my_employee
VALUES (4, 'Newman', 'Chad', 'cnewman', 750);


/*=======================================================
Question 5
Make the data additions permanent.
=======================================================*/

COMMIT;


/*=======================================================
Question 6
Change the last name of employee 3 to Drexler.
=======================================================*/

UPDATE my_employee
SET last_name = 'Drexler'
WHERE id = 3;


/*=======================================================
Question 7
Change the salary to 1000 for all employees
with a salary less than 900.
=======================================================*/

UPDATE my_employee
SET salary = 1000
WHERE salary < 900;


/*=======================================================
Question 8
Delete Betty Dancs from the MY_EMPLOYEE table.
=======================================================*/

DELETE FROM my_employee
WHERE first_name = 'Betty'
  AND last_name = 'Dancs';


/*=======================================================
Question 9
Commit all pending changes.
=======================================================*/

COMMIT;


/*=======================================================
Question 10
Empty the entire table.
=======================================================*/

DELETE FROM my_employee;


/*=======================================================
Question 11
Confirm that the table is empty.
=======================================================*/

SELECT *
FROM my_employee;


/*=======================================================
Question 12
Discard the changes made.
=======================================================*/

ROLLBACK;