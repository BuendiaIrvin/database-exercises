USE employees;

#---------------------------------------------------------------------------------------#
#Where clauses lecture

# SELECT * FROM employees WHERE hire_date =  '1985-01-01';
#
# SELECT first_name FROM employees WHERE first_name LIKE '%sus%';
#
# SELECT emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN 10026 AND 10082;
#
# SELECT emp_no, first_name, last_name FROM employees
# WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');
#
# SELECT emp_no, first_name, last_name FROM employees
# WHERE emp_no < 10026;
#
# SELECT emp_no, first_name, last_name FROM employees
# WHERE emp_no < 20000
#     AND last_name IN ('Herber', 'Baek')
#    OR first_name = 'Shridhar';
#
# SELECT * FROM salaries WHERE salary BETWEEN 50000 AND 100000;


#---------------------------------------------------------------------------------------#
#Where clauses exercise
# Create a file named where_exercises.sql. Make sure to use the employees database before you begin.
# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT * FROM employees WHERE last_name LIKE 'E%';

# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%';

# Part Two
# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT * FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';




#     Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT * FROM employees
WHERE first_name = 'Irena'
    AND gender = 'M'
   OR first_name = 'Vidya'
    AND gender = 'M'
   OR first_name = 'Maya'
    AND gender = 'M';


SELECT * FROM employees WHERE gender = 'M'
                          AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');

#     Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT * FROM employees WHERE last_name LIKE 'E%'
                           OR last_name LIKE '%E';



#     Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT * FROM employees WHERE last_name LIKE 'E%'
                          AND last_name LIKE '%E';


#     Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%'
                          AND NOT last_name LIKE '%qu%';

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