-- Number of students in each department
SELECT dept_name,
       COUNT(ID) AS no_of_students
FROM student
GROUP BY dept_name;

-- Departments where number of students > 10
SELECT COUNT(ID) AS average,
       dept_name
FROM student
GROUP BY dept_name
HAVING COUNT(ID) > 10;

-- Total number of courses in each department
SELECT dept_name,
       COUNT(course_id) AS no_of_course
FROM course
GROUP BY dept_name;

-- Average salary of departments where avg salary > 42000
SELECT dept_name,
       AVG(salary)
FROM instructor
GROUP BY dept_name
HAVING AVG(salary) > 42000;

-- Enrollment in each section (Spring 2009)
SELECT sec_id,
       COUNT(ID) AS enrollment
FROM takes
WHERE semester='Spring'
AND year=2009
GROUP BY sec_id;

-- Maximum total salary across departments
SELECT MAX(SUM(salary))
FROM instructor
GROUP BY dept_name;

-- Average instructor salary of departments with avg salary > 42000
SELECT AVG(salary)
FROM instructor
WHERE dept_name IN
(
    SELECT dept_name
    FROM instructor
    GROUP BY dept_name
    HAVING AVG(salary) > 42000
);

-- Sections with maximum enrollment in Spring 2010
SELECT sec_id,
       COUNT(ID)
FROM takes
WHERE semester='Spring'
AND year=2010
GROUP BY sec_id
HAVING COUNT(ID) =
(
    SELECT MAX(COUNT(ID))
    FROM takes
    WHERE semester='Spring'
    AND year=2010
    GROUP BY sec_id
);

-- Departments with avg salary > 50000 and more than 5 instructors
SELECT dept_name,
       AVG(salary) AS avg_salary
FROM instructor
GROUP BY dept_name
HAVING AVG(salary) > 50000
AND COUNT(ID) > 5;
