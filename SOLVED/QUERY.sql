-- LIST OF EMPLOYEES DETAILS
SELECT  a.emp_no, a.last_name, a.first_name, a.gender, b.salary
FROM employees AS a
INNER JOIN salaries AS b
ON a.emp_no = b.emp_no;
--LIST OF EMPLOYEES HIRED ON 1986
SELECT emp_no, last_name, first_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';
--LIST THE MANAGER OF EACH DEPARTMENT
SELECT a.dept_no, a.dept_name, b.emp_no, c.last_name,c.first_name, b.from_date, b.to_date
FROM department AS a
INNER JOIN dept_manager AS b
ON a.dept_no = b.dept_no
INNER JOIN employees AS c
ON b.emp_no = c.emp_no;
--LIST THE DEPARTMENT OF EACH EMPLOYEE
SELECT a.emp_no, a.last_name, a.first_name, c.dept_name
FROM employees AS a
INNER JOIN dept_emp AS b
ON a.emp_no = b.emp_no
INNER JOIN department AS c
ON b.dept_no = c.dept_no;
--LIST OF ALL THE EMPLOYEES WHOSE FIRST NAME IS HERCULES AND LAST NAME STARTS WIT A B
SELECT first_name, last_name 
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
--LIST AAL EMPLOYEES IN THE SALES DEPARTMENT
SELECT a.emp_no, a.last_name, a.first_name, c.dept_name
FROM employees AS a
INNER JOIN dept_emp AS b
ON a.emp_no = b.emp_no
INNER JOIN department AS c
ON b.dept_no = c.dept_no
WHERE dept_name LIKE 'Sales';
--LIST ALL EMPLOYEES IN SALES AND DEVELPMENT DEPARTMENT 
SELECT a.emp_no, a.last_name, a.first_name, c.dept_name
FROM employees AS a
INNER JOIN dept_emp AS b
ON a.emp_no = b.emp_no
INNER JOIN department AS c
ON b.dept_no = c.dept_no
WHERE dept_name = 'Sales'OR dept_name = 'Development';
--IN DESCENDING ORDER, LIST THE FREQUENCY COUNT OF EMPLOYEE LAST NAME 
SELECT last_name , 
COUNT(last_name)as last_name_count
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC;
