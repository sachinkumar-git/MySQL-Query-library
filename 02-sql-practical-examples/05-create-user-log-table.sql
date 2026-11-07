-- =============================================
-- Step 5: Create the user_log Table
-- =============================================

USE startersql;

-- Stores a record each time a new user is added
-- (filled by the trigger in 01-sql-fundamentals/20-after-insert-trigger.sql)
CREATE TABLE user_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    name VARCHAR(100),
    created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
