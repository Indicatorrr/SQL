-- View for Physics courses in Fall 2009
CREATE VIEW all_courses AS
SELECT c.course_id,
       c.title,
       s.sec_id,
       s.building,
       s.room_number
FROM course c
JOIN section s
ON c.course_id = s.course_id
WHERE c.dept_name='Physics'
AND s.semester='Fall'
AND s.year=2009;

-- Query the view
SELECT *
FROM all_courses;

-- View for department total salary
CREATE VIEW department_total_salary AS
SELECT dept_name,
       SUM(salary) AS total_salary
FROM instructor
GROUP BY dept_name;
