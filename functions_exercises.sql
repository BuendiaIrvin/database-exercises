USE employees;

#---------------------------------------------------------------------------------------#
#Order by lec


SELECT * FROM employees WHERE birth_date LIKE '1954-01%';

SELECT * FROM employees
WHERE birth_date
          LIKE '1954-01%'
ORDER BY birth_date;



#---------------------------------------------------------------------------------------#
#Order by exercise

# Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Demeyer.
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Boguraev.
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

# Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Vidya Quittner.
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;


# Update your queries for employees with 'E' in their last name to sort the results by their employee number. Your results should not change!
SELECT * FROM employees
WHERE last_name
          LIKE '%E%'
ORDER BY emp_no;

# Now reverse the sort order for both queries and compare results.
SELECT * FROM employees
WHERE last_name
          LIKE '%E%'
ORDER BY emp_no DESC;

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name DESC;

SELECT * FROM salaries
WHERE salary > 100000
ORDER BY salary DESC;

#---------------------------------------------------------------------------------------#
#functions lec

SELECT CONCAT(First_name, ' ', last_name)
FROM employees
WHERE first_name = 'Maya'
ORDER BY last_name;

SELECT hire_date
FROM employees
WHERE first_name ='Maya';

SELECT DAYOFMONTH(hire_date)
FROM employees
WHERE first_name ='Maya';



#---------------------------------------------------------------------------------------#
#functions exercise

# Copy the order_by_exercises.sql script and save it as functions_exercises.sql.


# Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results.
SELECT CONCAT(First_name, ' ', last_name)
FROM employees
WHERE last_name
LIKE 'E%'
AND last_name
LIKE '%E';

# Find all employees born on Christmas — 842 rows.
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
AND DAY(birth_date) = 25;

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
AND DAY(birth_date) = 25
AND YEAR(hire_date) LIKE '199%';


# Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last. It should be Khun Bernini.
SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
AND DAY(birth_date) = 25
AND YEAR(hire_date) LIKE '199%'
ORDER BY birth_date, hire_date DESC;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You might also need to use now() or curdate()).

SELECT DATEDIFF(now(), hire_date)
FROM employees
WHERE MONTH(birth_date) = 12
AND DAY(birth_date) = 25
AND YEAR(hire_date) LIKE '199%'
ORDER BY hire_date;

SELECT *, DATEDIFF(hire_date, CURDATE())
FROM employees
WHERE DAY(birth_date) = 25
AND MONTH(birth_date) = 12
AND YEAR(hire_date) LIKE '199%'
ORDER BY DATEDIFF(hire_date, CURDATE());


#test

