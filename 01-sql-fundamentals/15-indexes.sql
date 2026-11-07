-- =============================================
-- Indexes
-- =============================================

USE startersql;

-- List the indexes on the users table
SHOW INDEXES FROM users;

-- Create an index on a single column
-- CREATE INDEX idx_email ON users(gender);

-- Create a composite index on multiple columns
-- CREATE INDEX idx_general_salary ON users(gender, salary);

-- A query that can use an index
-- SELECT * FROM users WHERE email = "aarav@example.com" AND gender = "Male";

-- Remove an index
-- DROP INDEX idx_email ON users;
