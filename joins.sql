USE employees;
SELECT employees.last_name, salaries.salary
FROM employees JOIN salaries
ON employees.emp_no = salaries.emp_no
limit 50;

USE codeup_test_db;
CREATE TABLE persons (
                         person_id INT NOT NULL AUTO_INCREMENT,
                         first_name VARCHAR(25) NOT NULL,
                         album_id INT NOT NULL,
                         PRIMARY KEY (person_id)
);

INSERT INTO persons (first_name, album_id) VALUES ('Olivia', 29), ('Santiago', 27), ('Tareq', 15), ('Anaya', 28);

SELECT p.first_name, a.name
FROM persons p
    INNER JOIN albums a
        ON p.album_id = a.id;

SELECT p.first_name, a.name FROM albums a LEFT JOIN persons p on a.id = p.album_id;

SELECT P.first_name, a.name
FROM persons p
RIGHT JOIN albums a on a.id = p.album_id;


