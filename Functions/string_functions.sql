-- Length function
SELECT name,LENGTH(name)
FROM student;

-- Substring
SELECT dept_name,
       SUBSTR(dept_name,3,3)
FROM department;

-- Uppercase
SELECT UPPER(name)
FROM instructor;
