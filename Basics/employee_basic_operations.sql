-- =========================================
-- Lab 1 : Basic SQL Operations on Employee Table
-- Author : Ashwin H V
-- Description : Demonstrates basic SQL commands
-- =========================================

-- Create Employee Table
CREATE TABLE employee(
    emp_no NUMBER(10) PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_address VARCHAR(50)
);

-- Insert Records
INSERT INTO employee VALUES (1,'Rahul','Udupi');
INSERT INTO employee VALUES (2,'Rohit','Mangalore');
INSERT INTO employee VALUES (3,'Mohit','Manipal');
INSERT INTO employee VALUES (4,'Mohan','Manipal');
INSERT INTO employee VALUES (5,'Rohan','Mangalore');

-- Display all records
SELECT * FROM employee;

-- Display only employee names
SELECT emp_name FROM employee;

-- Display employees from Manipal
SELECT * 
FROM employee
WHERE emp_address='Manipal';

-- Add salary column
ALTER TABLE employee 
ADD salary NUMBER(7);

-- Describe table structure
DESC employee;

-- Update salary for all employees
UPDATE employee 
SET salary = 50000;

-- Delete employees from Mangalore
DELETE 
FROM employee 
WHERE emp_address='Mangalore';

-- Rename table
RENAME employee TO employee1;

-- Drop table
DROP TABLE employee1;
