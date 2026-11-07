-- =============================================
-- Insert Rows into a Table
-- =============================================

USE startersql;

-- Insert without column names
-- Values must follow the exact column order of the table
-- INSERT INTO users VALUES
-- ('2015-07-13', 1, 'alice@example.com', 'Alice', 'Male', DEFAULT);

-- Insert a single row with column names
-- INSERT INTO users (name, email, gender, date_of_birth) VALUES
-- ('Sachin', 'sachin@example.com', 'Male', '2012-12-12');

-- Insert multiple rows in one statement
-- INSERT INTO users (name, email, gender, date_of_birth) VALUES
-- ('Sachin13', 'sachin13@example.com', 'Male', '2012-12-11'),
-- ('Sachin2', 'sachin2@example.com', 'Male', '2012-12-15'),
-- ('Sachin3', 'sachin3@example.com', 'Male', '2012-12-18');

INSERT INTO users (name, email, gender, date_of_birth) VALUES
('Sachin2', 'sachin2@example.com', 'Male', '2012-12-15'),
('Sachin3', 'sachin3@example.com', 'Male', '2012-12-18');

-- View the inserted rows
SELECT * FROM users;
