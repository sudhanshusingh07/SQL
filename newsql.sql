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

-- Select only email and name columns from user table
SELECT email, name FROM user;

-- Rename table "user" to "programer"
RENAME TABLE user TO programer;

 ALTER TABLE programer ADD COLUMN is_active BOOLEAN DEFAULT true; --Add a column

ALTER TABLE programer DROP COLUMN is_active; -- delete column
ALTER TABLE programer MODIFY column name VARCHAR(150)  -- modify column

ALTER TABLE programer MODIFY column email VARCHAR(100) after id  -- sifting of column


-- Insert values in table
INSERT INTO programer
VALUES (NULL, 'sudhanshu', 'ss@s', 'MALE', '2001-01-01', DEFAULT);

INSERT INTO programer VALUES
(1, 'sudhanshu', 'ss@s', 'MALE', '2001-01-01', '2026-01-03 02:00:00');


INSERT INTO programer (id, name, email, gender, date_of_birth)
VALUES (1, 'sudhanshu', 'ss@s', 'MALE', '2001-01-01');

select * from users where gender='Female'; -- "where" is use to find some specific things to write any condition after where
