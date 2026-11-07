-- =============================================
-- Create the user_log Table
-- =============================================

-- The trigger in 20-after-insert-trigger.sql writes to this table

USE startersql;

CREATE TABLE user_log (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    name VARCHAR(100),
    created_on TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
