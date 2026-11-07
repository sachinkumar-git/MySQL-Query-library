-- =============================================
-- Filter Rows with WHERE, Sort with ORDER BY
-- =============================================

USE startersql;

-- ---------------------------------------------
-- Comparison operators
-- ---------------------------------------------

-- Equal to
-- SELECT * FROM users WHERE gender = 'Male';

-- Not equal to (!= and <> work the same way)
-- SELECT * FROM users WHERE gender != 'Male';
-- SELECT * FROM users WHERE gender <> 'Male';
-- SELECT * FROM users WHERE gender != '1995-09-09';

-- Greater than or equal to
-- SELECT * FROM users WHERE id >= 10;

-- ---------------------------------------------
-- NULL checks, BETWEEN and IN
-- ---------------------------------------------

-- SELECT * FROM users WHERE date_of_birth IS NULL;
-- SELECT * FROM users WHERE date_of_birth IS NOT NULL;

-- BETWEEN includes both boundary values
-- SELECT * FROM users WHERE date_of_birth BETWEEN '1990-09-09' AND '1999-09-09';

-- IN matches any value in the list
-- SELECT * FROM users WHERE gender IN ('Male', 'Female');

-- ---------------------------------------------
-- Logical operators: AND, OR, NOT
-- ---------------------------------------------

-- SELECT * FROM users WHERE gender = 'Female' AND salary > '70000';
-- SELECT * FROM users WHERE gender = 'Male' AND salary < '70000';
-- SELECT * FROM users WHERE gender = 'Male' OR salary < '65000';
-- SELECT * FROM users WHERE NOT salary = '65000';

-- ---------------------------------------------
-- Sorting with ORDER BY and limiting with LIMIT
-- ---------------------------------------------

-- Ascending order (default)
-- SELECT * FROM users WHERE gender = 'Male' OR salary < '65000' ORDER BY date_of_birth ASC;

-- Descending order
-- SELECT * FROM users WHERE gender = 'Male' OR salary < '65000' ORDER BY date_of_birth DESC;

-- Return only the first 5 rows
-- SELECT * FROM users WHERE gender = 'Male' OR salary < '65000' ORDER BY date_of_birth LIMIT 5;
-- SELECT * FROM users WHERE gender = 'Male' OR salary < '65000' ORDER BY date_of_birth DESC LIMIT 5;

-- Other operators to practice: LIKE, NOT IN, NOT BETWEEN ... AND ...
