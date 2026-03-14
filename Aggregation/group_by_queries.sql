-- Departments with highest average salary
SELECT dept_name
FROM instructor
GROUP BY dept_name
HAVING AVG(salary) >= ALL (
    SELECT AVG(salary)
    FROM instructor
    GROUP BY dept_name
);

-- Departments whose budget is less than average instructor salary
SELECT dept_name
FROM department
WHERE budget <= ALL (
    SELECT AVG(salary)
    FROM instructor
);

-- Courses offered at most once in 2009
SELECT course_id
FROM section
WHERE year=2009
GROUP BY course_id
HAVING COUNT(*) <= 1;

-- Students who opted at least two CSE courses
SELECT S.ID, S.name
FROM student S
JOIN takes T ON S.ID = T.ID
JOIN course C ON T.course_id = C.course_id
WHERE C.dept_name='CSE'
GROUP BY S.ID,S.name
HAVING COUNT(DISTINCT T.course_id) >= 2;

-- Average instructor salary per department (>42000)
SELECT dept_name,
       AVG(salary) AS avg_salary
FROM instructor
GROUP BY dept_name
HAVING AVG(salary) > 42000;

-- Number of students taught by instructor 10101
SELECT COUNT(DISTINCT ID)
FROM takes
WHERE (course_id,sec_id,year) IN
(
    SELECT course_id,sec_id,year
    FROM teaches
    WHERE ID=10101
);
