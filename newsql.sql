-- Create a database named newsql
CREATE DATABASE newsql;

-- Use the newsql database
USE newsql;

-- Create a table to store user details
CREATE TABLE user (

    -- Unique user ID (auto generated)
    id INT AUTO_INCREMENT PRIMARY KEY,

    -- User name (cannot be empty)
    name VARCHAR(100) NOT NULL,

    -- User email (cannot be empty)
    email VARCHAR(100) NOT NULL,

    -- Gender with fixed options
    gender ENUM('MALE', 'FEMALE', 'OTHER'),

    -- Date of birth
    date_of_birth DATE,

    -- Record creation time
    create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Fetch all records from user table
SELECT * FROM user;

-- Delete the entire database
DROP DATABASE newsql;
