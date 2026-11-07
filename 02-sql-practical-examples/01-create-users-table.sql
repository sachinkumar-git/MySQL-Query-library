-- =============================================
-- Step 1: Create the Database and users Table
-- =============================================

-- Create the database only if it does not already exist
CREATE DATABASE IF NOT EXISTS startersql;

-- Select the database
USE startersql;

-- Create the users table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
