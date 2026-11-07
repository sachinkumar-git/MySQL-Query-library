-- =============================================
-- Update Existing Rows with UPDATE
-- =============================================

USE startersql;

-- Update multiple columns of one row
-- UPDATE users SET salary = 45000, email = 'aarav@aarav.com' WHERE id = 1;

-- Update a single column
-- UPDATE users SET salary = 70000 WHERE id = 5;

-- Find the row to update using a different column
-- UPDATE users SET name = 'Aisha Khan' WHERE email = 'aisha@example.com';

-- Increase salary by 10000 for users earning less than 60000
UPDATE users SET salary = salary + 10000 WHERE salary < 60000;

SELECT * FROM users;
