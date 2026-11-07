-- =============================================
-- Practice: ALTER TABLE and INSERT
-- =============================================

-- This script uses a separate practice database (myfirst)
-- with a practice table named sachin.

USE myfirst;

-- ---------------------------------------------
-- ALTER TABLE
-- ---------------------------------------------

-- Add a column
-- ALTER TABLE sachin ADD COLUMN is_ok VARCHAR(50);

-- Remove a column
-- ALTER TABLE sachin DROP COLUMN is_ok;

-- Move a column after another column
-- ALTER TABLE sachin MODIFY COLUMN email_id VARCHAR(100) AFTER date_of_birth;

-- Rename a column and change its definition
-- ALTER TABLE sachin CHANGE COLUMN name full_name VARCHAR(100);

-- ---------------------------------------------
-- INSERT
-- ---------------------------------------------

-- Insert without column names (values follow table column order)
-- INSERT INTO sachin VALUES
-- (2, 'sachin', 'Male', '2005-05-02', 'sachin@example.com', DEFAULT);

-- Insert only some columns
-- INSERT INTO sachin (name, gender, email_id)
-- VALUES ('machin', 'Male', 'machin@example.com');

-- Insert with an explicit id
-- INSERT INTO sachin (id, name, gender, date_of_birth, email_id)
-- VALUES (5, 'jachhin', 'Male', '205-05-02', 'jachhin@example.com');

-- ---------------------------------------------
-- SELECT
-- ---------------------------------------------

-- SELECT * FROM sachin WHERE gender IN ('Female');

SELECT * FROM sachin;
