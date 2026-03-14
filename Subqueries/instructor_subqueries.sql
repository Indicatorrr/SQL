-- Salary range
SELECT name,salary
FROM instructor
WHERE salary>40000
AND salary<90000;

-- Instructor not teaching
SELECT ID
FROM Instructor
WHERE ID NOT IN (
    SELECT ID
    FROM Teaches
);

-- Salary greater than minimum in Comp Sci
SELECT name,
       salary AS inst_salary
FROM instructor
WHERE salary > (
    SELECT MIN(salary)
    FROM instructor
    WHERE dept_name = 'Comp. Sci.'
);

-- LIKE example
SELECT name
FROM instructor
WHERE dept_name LIKE '%ch%';
