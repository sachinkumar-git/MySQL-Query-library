-- =============================================
-- Views
-- =============================================

USE startersql;

-- A view is a saved query that works like a virtual table
-- CREATE VIEW rich_users AS
-- SELECT * FROM users WHERE salary > 70000;

-- A view always shows the current data from its base table
-- UPDATE users SET salary = 30000 WHERE id = 2;
-- SELECT * FROM rich_users;
-- SELECT name, email FROM rich_users;

-- Remove the view (the users table is not affected)
DROP VIEW rich_users;
