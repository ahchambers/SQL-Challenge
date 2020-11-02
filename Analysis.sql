--Data Analysis
--1
SELECT Employees.emp_no,
  Employees.last_name,
  Employees.first_name,
  Employees.sex,
  Salaries_1.salary
FROM Employees
INNER JOIN Salaries_1 ON
Employees.emp_no = Salaries_1.emp_no;

--2
SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date > '31-12-1985';

--3
SELECT Departments.dept_no, Departments.dept_name, Employees.emp_no, Employees.last_name, Employees.first_name
FROM Departments
JOIN Manager
ON Departments.dept_no = Manager.dept_no
JOIN employees
ON Manager.emp_no = Employees.emp_no;

--4
SELECT Departments.dept_name, Employees.emp_no, Employees.last_name, Employees.first_name
FROM Departments
JOIN Manager
ON Departments.dept_no = Manager.dept_no
JOIN employees
ON Manager.emp_no = Employees.emp_no;

--5
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--6
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_no
FROM Departments
JOIN Manager
ON Departments.dept_no = Manager.dept_no
JOIN employees
ON Manager.emp_no = Employees.emp_no
WHERE Departments.dept_name = 'Sales';

--7
SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_no
FROM Departments
JOIN Manager
ON Departments.dept_no = Manager.dept_no
JOIN employees
ON Manager.emp_no = Employees.emp_no
WHERE Departments.dept_name = 'Sales'
OR Departments.dept_name = 'Development';

--8
SELECT last_name,
COUNT(last_name) AS "frequency"
FROM Employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;