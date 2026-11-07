-- =============================================
-- Transactions, AUTOCOMMIT, COMMIT and ROLLBACK
-- =============================================

USE startersql2;

-- Turn off autocommit so changes are not saved automatically
-- SET autocommit = 0;

-- Delete a row, then undo the change with ROLLBACK
-- DELETE FROM users WHERE id = 6;
-- ROLLBACK;

-- Delete a row and save the change permanently with COMMIT
DELETE FROM users WHERE id = 5;
COMMIT;

SELECT * FROM users;
