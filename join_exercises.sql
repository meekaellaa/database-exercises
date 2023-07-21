USE employees;

# write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments d
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01'
ORDER BY d.dept_name;
# +--------------------+--------------------+
# | Department Name    | Department Manager |
# +--------------------+--------------------+
# | Customer Service   | Yuchang Weedman    |
# | Development        | Leon DasSarma      |
# | Finance            | Isamu Legleitner   |
# | Human Resources    | Karsten Sigstam    |
# | Marketing          | Vishwani Minakawa  |
# | Production         | Oscar Ghazalie     |
# | Quality Management | Dung Pesch         |
# | Research           | Hilary Kambil      |
# | Sales              | Hauke Zhang        |
# +--------------------+--------------------+



# Find the name of all departments currently managed by women.

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments d
         JOIN dept_manager dm ON dm.emp_no
         JOIN dept_manager d ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-81-01' AND e.gender = 'F';
# ORDER BY d.dept_name;
# +------------------+--------------------+
# | Department Name  | Department Manager |
# +------------------+--------------------+
# | Development      | Leon DasSarma      |
# | Finance          | Isamu Legleitner   |
# | Human Resources  | Karsten Sigstam    |
# | Research         | Hilary Kambil      |
# +------------------+--------------------+


# Find the current titles of employees currently working in the Customer Service department.
SELECT title, COUNT(title) AS 'Total'
FROM titles t
JOIN dept_emp AS de ON t.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Customer Service' AND de.to_date = '9999-01-01' AND t.to_date = '9999-01-01'
GROUP BY title;

# +--------------------+-------+
# | title              | Total |
# +--------------------+-------+
# | Senior Staff       | 11268 |
# | Staff              |  3574 |
# | Senior Engineer    |  1790 |
# | Engineer           |   627 |
# | Technique Leader   |   241 |
# | Assistant Engineer |    68 |
# | Manager            |     1 |
# +--------------------+-------+


# Find the current salary of all current managers.

SELECT d.dept_name AS 'Department Name',CONCAT(first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
       FROM employees e
JOIN dept_manager dm ON dm.emp_no = e.emp_no
JOIN departments d ON dm.dept_no = d.dept_no
JOIN salaries s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;


# +--------------------+--------------------+--------+
# | Department Name    | Department Manager | Salary |
# +--------------------+--------------------+--------+
# | Customer Service   | Yuchang Weedman    |  58745 |
# | Development        | Leon DasSarma      |  74510 |
# | Finance            | Isamu Legleitner   |  83457 |
# | Human Resources    | Karsten Sigstam    |  65400 |
# | Marketing          | Vishwani Minakawa  | 106491 |
# | Production         | Oscar Ghazalie     |  56654 |
# | Quality Management | Dung Pesch         |  72876 |
# | Research           | Hilary Kambil      |  79393 |
# | Sales              | Hauke Zhang        | 101987 |
# +--------------------+--------------------+--------+



