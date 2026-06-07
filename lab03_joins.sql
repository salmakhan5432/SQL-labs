-- =====================================================
-- Lab 03: Joins
-- =====================================================


/* =====================================================
Question 1
Display the last name, department number, and
department name for all employees. Also include
departments in which no employee is working.
===================================================== */

SELECT e.last_name,
d.department_id,
d.department_name
FROM employees e
RIGHT OUTER JOIN departments d
ON e.department_id = d.department_id;

/* =====================================================
Question 2
Display employee last name, department name,
location ID, and city of all employees who earn
a commission. Use the USING clause.
===================================================== */

SELECT e.last_name,
d.department_name,
d.location_id,
l.city
FROM employees e
JOIN departments d
USING (department_id)
JOIN locations l
ON d.location_id = l.location_id
WHERE e.commission_pct IS NOT NULL;

/* =====================================================
Question 3
Produce the addresses of all departments using
the LOCATIONS and COUNTRIES tables.
Use a NATURAL JOIN.
===================================================== */

SELECT location_id,
street_address,
city,
state_province,
country_name
FROM locations
NATURAL JOIN countries;

/* =====================================================
Question 4
Display the last name, department number,
and department name for all employees.
===================================================== */

SELECT e.last_name,
e.department_id,
d.department_name
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

/* =====================================================
Question 5
Display employees' last name and employee number
along with their manager's last name and manager
number. Label the columns as:
Employees, Emp#, Manager, Mgr#
===================================================== */

SELECT e.last_name AS "Employees",
e.employee_id AS "Emp#",
m.last_name AS "Manager",
m.employee_id AS "Mgr#"
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id;
