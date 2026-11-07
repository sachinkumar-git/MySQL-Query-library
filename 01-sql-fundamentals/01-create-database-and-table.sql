-- =============================================
-- Create a Database and a Table
-- =============================================

-- Create a new database
CREATE DATABASE startersql;

-- Select the database
USE startersql;

-- Create the users table
-- AUTO_INCREMENT generates a unique id for every new row
-- UNIQUE prevents duplicate email addresses
-- ENUM restricts gender to a fixed list of values
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- View all rows in the table
SELECT * FROM users;
