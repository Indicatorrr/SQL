-- Transfer students from CSE to IT department
UPDATE student
SET dept_name = 'IT'
WHERE dept_name = 'Comp. Sci.';

-- Salary increment based on condition
UPDATE instructor
SET salary =
CASE
    WHEN salary > 100000 THEN salary * 1.03
    ELSE salary * 1.05
END;

-- Rollback example
ROLLBACK TO s1;
