-- =============================================
-- Stored Procedures
-- =============================================

USE startersql;

-- ---------------------------------------------
-- Basic syntax
-- ---------------------------------------------

-- DELIMITER changes the statement terminator so that the
-- semicolons inside the procedure body do not end the CREATE statement
-- DELIMITER $$
-- CREATE PROCEDURE procedure_name()
-- BEGIN
--     -- SQL statements go here
-- END$$
-- DELIMITER ;

-- ---------------------------------------------
-- Procedure with input parameters
-- ---------------------------------------------

-- DELIMITER $$

-- CREATE PROCEDURE AddUser(
--     IN p_name VARCHAR(100),
--     IN p_email VARCHAR(100),
--     IN p_gender ENUM('Male', 'Female', 'Other'),
--     IN p_dob DATE,
--     IN p_salary INT
-- )
-- BEGIN
--     INSERT INTO users (name, email, gender, date_of_birth, salary)
--     VALUES (p_name, p_email, p_gender, p_dob, p_salary);
--     SELECT * FROM users;
-- END$$

-- DELIMITER ;

-- Run the procedure
-- CALL AddUser('Kiran Sharma', 'kiran@example.com', 'Female', '1994-06-15', 72000);

-- ---------------------------------------------
-- List and remove procedures
-- ---------------------------------------------

SHOW PROCEDURE STATUS WHERE Db = 'startersql';
DROP PROCEDURE IF EXISTS AddUser;
