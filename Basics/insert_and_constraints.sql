-- Insert departments
INSERT INTO department VALUES(10,'Physics','Manipal');
INSERT INTO department VALUES(20,'Chemistry','Manipal');
INSERT INTO department VALUES(30,'Biology','Mangalore');

-- Insert employees
INSERT INTO employee VALUES(1234,'Paul','M',50000,'Manipal',10);
INSERT INTO employee VALUES(4234,'John','M',55000,'Manipal',20);
INSERT INTO employee VALUES(5523,'Mary','F',55000,'Manipal',30);

-- Example constraint violations

-- Duplicate primary key
INSERT INTO employee VALUES(4234,'John','M',55000,'Manipal',20);

-- Foreign key violation
INSERT INTO employee VALUES(123,'Jhonn','M',55000,'Manipal',40);

-- Duplicate department
INSERT INTO department VALUES(30,'Math','Mangalore');

-- Delete department (fails due to FK)
DELETE FROM department WHERE Deptno=10;

-- Drop FK
ALTER TABLE employee DROP CONSTRAINT fk_constraint;

-- Recreate FK with cascade
ALTER TABLE employee
ADD CONSTRAINT fk_constraint
FOREIGN KEY(DNo)
REFERENCES Department(DeptNo)
ON DELETE CASCADE;
