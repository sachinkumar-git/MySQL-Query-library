-- =============================================
-- LIKE, LIMIT with OFFSET, DISTINCT and TRUNCATE
-- =============================================

USE startersql;

-- ---------------------------------------------
-- Pattern matching with LIKE
-- ---------------------------------------------

-- _ matches exactly one character, % matches any number of characters
-- SELECT * FROM users WHERE name LIKE '_a_h%';

-- ---------------------------------------------
-- LIMIT with OFFSET (pagination)
-- ---------------------------------------------

-- Skip the first 10 rows and return the next 5
-- SELECT * FROM users
-- ORDER BY id
-- LIMIT 5 OFFSET 10;

-- Same result with the short syntax: LIMIT offset, count
-- SELECT * FROM users
-- ORDER BY id
-- LIMIT 10, 5;

-- ---------------------------------------------
-- DISTINCT returns unique values only
-- ---------------------------------------------

-- SELECT DISTINCT gender FROM users;

-- ---------------------------------------------
-- TRUNCATE removes all rows but keeps the table structure
-- ---------------------------------------------

-- WARNING: This deletes every row in the users table.
TRUNCATE TABLE users;
