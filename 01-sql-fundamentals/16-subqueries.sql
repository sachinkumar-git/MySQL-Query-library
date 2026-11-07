-- =============================================
-- Subqueries
-- =============================================

USE startersql;

-- ---------------------------------------------
-- Subquery in the WHERE clause
-- ---------------------------------------------

-- SELECT AVG(salary) FROM users;

-- Users who earn more than the average salary
-- SELECT * FROM users WHERE salary > (SELECT AVG(salary) FROM users);

-- ---------------------------------------------
-- Subquery with IN
-- ---------------------------------------------

-- Users who were referred by someone earning more than 50000
-- SELECT id, name, referred_by_id
-- FROM users
-- WHERE referred_by_id IN (
--     SELECT id FROM users WHERE salary > 50000
-- );

-- ---------------------------------------------
-- Subquery in the SELECT list
-- ---------------------------------------------

-- Show each salary next to the overall average salary
SELECT name, salary,
    (SELECT AVG(salary) FROM users) AS average_salary
FROM users;
