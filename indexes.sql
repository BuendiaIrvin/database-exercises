USE employees;

# use oof indexes is part of query optimization

SHOW INDEXES from employees;


SHOW INDEXES from departments;

SELECT salary FROM salaries
WHERE salary BETWEEN 50000 AND 70000;

ALTER TABLE salaries ADD INDEX salary_index (salary);


USE codeup_test_db;

CREATE TABLE quotes2 (
    id INT NOT NULL AUTO_INCREMENT,
    content VARCHAR(240) NOT NULL,
    author VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE quotes2 ADD UNIQUE (content);

ALTER TABLE albums ADD UNIQUE (artist, name);


# Peter Jackson     | Thriller                                                |         1982 |   473 | Pop

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Peter Jackson', 'Thriller', 1982, 47.3, 'Pop');