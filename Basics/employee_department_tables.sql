-- Create Employee Table
CREATE TABLE employee(
    Empno NUMBER(10),
    Empname VARCHAR(20) NOT NULL,
    Gender VARCHAR(1) NOT NULL,
    Salary NUMBER(10) NOT NULL,
    Address VARCHAR(50) NOT NULL,
    DNo NUMBER(10),
    CHECK (Gender IN('M','F')),
    PRIMARY KEY (Empno)
);

-- Create Department Table
CREATE TABLE Department(
    DeptNo NUMBER(10),
    DeptName VARCHAR(20) UNIQUE,
    Location VARCHAR(20),
    PRIMARY KEY (DeptNo)
);

-- Add Foreign Key
ALTER TABLE employee
ADD CONSTRAINT fk_constraint
FOREIGN KEY(DNo)
REFERENCES Department(DeptNo);
