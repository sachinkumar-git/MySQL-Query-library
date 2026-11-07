-- =============================================
-- Delete Rows and Drop a Table
-- =============================================

USE startersql;

-- ---------------------------------------------
-- DELETE removes the rows that match the condition
-- ---------------------------------------------

-- DELETE FROM users WHERE id = 3;
-- DELETE FROM users WHERE salary < 65000;

-- ---------------------------------------------
-- DROP TABLE removes the table and all of its data
-- ---------------------------------------------

-- WARNING: Most other scripts use the users table.
-- Recreate it with 02-sql-practical-examples/01-create-users-table.sql after running this.
DROP TABLE users;

-- This query now fails because the table no longer exists
SELECT * FROM users;
