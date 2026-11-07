-- =============================================
-- Modify Table Structure with ALTER TABLE
-- =============================================

-- Add a new column with a default value
-- ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

-- Change the data type or size of a column
-- ALTER TABLE users MODIFY COLUMN name VARCHAR(150);

-- Move a column to a new position (after the id column)
-- ALTER TABLE users MODIFY COLUMN email VARCHAR(100) AFTER id;

-- Change the data type and move the column to the first position
ALTER TABLE users MODIFY COLUMN date_of_birth DATETIME FIRST;

-- View the result
SELECT * FROM users;
