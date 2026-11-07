-- =============================================
-- Built-in SQL Functions
-- =============================================

USE startersql2;

-- ---------------------------------------------
-- Aggregate functions
-- ---------------------------------------------

-- Count all users
-- SELECT COUNT(*) FROM users;

-- Count the users that match a condition
-- SELECT COUNT(*) FROM users WHERE gender = 'Female';

-- Lowest and highest salary
-- SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;

-- Total salary
-- SELECT SUM(salary) AS total_payroll FROM users;

-- Average salary
-- SELECT AVG(salary) AS avg_salary FROM users;

-- Average salary for each gender
-- SELECT gender, AVG(salary) AS avg_salary FROM users GROUP BY gender;

-- ---------------------------------------------
-- String functions
-- ---------------------------------------------

-- Length of each name
-- SELECT name, LENGTH(name) AS name_length FROM users;

-- Convert names to lowercase or uppercase
-- SELECT name, LOWER(name) AS lowercase_name FROM users;
-- SELECT name, UPPER(name) AS uppercase_name FROM users;

-- Combine name and email into one value
-- SELECT CONCAT(name, ' <', email, '>') AS user_contact FROM users;

-- ---------------------------------------------
-- Date functions
-- ---------------------------------------------

-- Number of days between today and the date of birth
-- SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days_lived FROM users;

-- ---------------------------------------------
-- Numeric functions
-- ---------------------------------------------

-- SELECT salary,
--        ROUND(salary) AS rounded,
--        FLOOR(salary) AS floored,
--        CEIL(salary) AS ceiled
-- FROM users;
