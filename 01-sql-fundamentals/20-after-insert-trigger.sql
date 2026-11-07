-- =============================================
-- Triggers: AFTER INSERT
-- =============================================

USE startersql;

-- Create a trigger that adds a row to user_log every time a user is inserted
-- NEW refers to the row that was just inserted
-- DELIMITER $$

-- CREATE TRIGGER after_user_insert
-- AFTER INSERT ON users
-- FOR EACH ROW
-- BEGIN
--     INSERT INTO user_log (user_id, name)
--     VALUES (NEW.id, NEW.name);
-- END$$

-- DELIMITER ;

-- Test the trigger by inserting a new user
-- INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
-- ('Rohan', 'rohan@2example.com', 'Male', '2007-04-04', 56000);

-- Check the log table
SELECT * FROM user_log;
