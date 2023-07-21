USE employees;
SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'e%e';

SELECT * FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25;
SELECT * FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25 AND YEAR(hire_date) BETWEEN  1990 AND 1999;
SELECT * FROM employees
         WHERE MONTH(birth_date) = 12
         AND DAY(birth_date) = 25
         AND YEAR(hire_date)
         BETWEEN  1990 AND 1999
         ORDER BY birth_date ASC, hire_date DESC;

SELECT DATEDIFF(CURDATE(), hire_date), CONCAT(first_name, ' ', last_name)
    FROM employees
    WHERE MONTH(birth_date) = 12
    AND DAY(birth_date) = 25
    AND YEAR(hire_date)
    BETWEEN  1990 AND 1999
    ORDER BY DATEDIFF(CURDATE(), hire_date) DESC;
