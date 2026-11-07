-- =============================================
-- GROUP BY, HAVING and ROLLUP
-- =============================================

USE startersql;

-- ---------------------------------------------
-- GROUP BY
-- ---------------------------------------------

-- Average salary for each gender
-- SELECT gender, AVG(salary) AS average_salary
-- FROM users
-- GROUP BY gender;

-- Number of users referred by each user
-- SELECT referred_by_id, COUNT(*) AS total_referred
-- FROM users
-- WHERE referred_by_id IS NOT NULL
-- GROUP BY referred_by_id;

-- ---------------------------------------------
-- HAVING filters groups after GROUP BY
-- (WHERE filters individual rows before grouping)
-- ---------------------------------------------

-- Genders with an average salary above 75000
-- SELECT gender, AVG(salary) AS avg_salary
-- FROM users
-- GROUP BY gender
-- HAVING AVG(salary) > 75000;

-- Users who referred more than one person
-- SELECT referred_by_id, COUNT(*) AS total_referred
-- FROM users
-- WHERE referred_by_id IS NOT NULL
-- GROUP BY referred_by_id
-- HAVING COUNT(*) > 1;

-- ---------------------------------------------
-- WITH ROLLUP adds a grand total row
-- ---------------------------------------------

SELECT gender, COUNT(*) AS total_users
FROM users
GROUP BY gender WITH ROLLUP;
