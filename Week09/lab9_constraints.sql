/*==============================================================
  Lab 10 - Constraints
  Database Systems Lab
==============================================================*/

-- Question 1
-- Add a PRIMARY KEY constraint to EMP table

ALTER TABLE EMP
ADD CONSTRAINT my_emp_id_pk
PRIMARY KEY (ID);


-- Question 2
-- Add a PRIMARY KEY constraint to DEPT table

ALTER TABLE DEPT
ADD CONSTRAINT my_dept_id_pk
PRIMARY KEY (ID);


-- Question 3
-- Add DEPT_ID column and FOREIGN KEY constraint

ALTER TABLE EMP
ADD DEPT_ID NUMBER;

ALTER TABLE EMP
ADD CONSTRAINT my_emp_dept_id_fk
FOREIGN KEY (DEPT_ID)
REFERENCES DEPT(ID);


-- Question 4
-- Display constraints

SELECT constraint_name,
       constraint_type,
       table_name,
       status
FROM user_constraints
WHERE table_name IN ('EMP', 'DEPT');


-- Question 5
-- Add COMMISSION column with CHECK constraint

ALTER TABLE EMP
ADD COMMISSION NUMBER(2,2);

ALTER TABLE EMP
ADD CONSTRAINT emp_commission_chk
CHECK (COMMISSION > 0);