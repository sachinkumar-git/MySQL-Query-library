-- =============================================
-- SELF JOIN
-- =============================================

USE startersql;

-- ---------------------------------------------
-- Setup: add a referral column
-- ---------------------------------------------

-- referred_by_id stores the id of another user from the same table
-- ALTER TABLE users
-- ADD COLUMN referred_by_id INT;

-- UPDATE users SET referred_by_id = 1 WHERE id IN (2, 3, 13, 14, 15, 16, 18, 20);
-- UPDATE users SET referred_by_id = 2 WHERE id = 4;

-- ---------------------------------------------
-- Self join: join the users table to itself
-- ---------------------------------------------

-- Alias a is the user, alias b is the user who referred them
SELECT
    a.id,
    a.name AS user_name,
    b.name AS referred_by_name
FROM users a
INNER JOIN users b ON a.referred_by_id = b.id;

SELECT * FROM users;
