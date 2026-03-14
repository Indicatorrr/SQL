-- Student and department
SELECT name,dept_name
FROM student;

-- Instructor in Comp Sci
SELECT id,name
FROM instructor
WHERE dept_name='Comp. Sci.';

-- Course queries
SELECT title
FROM course
WHERE dept_name='Comp. Sci.'
AND credits=3;

-- Join takes and course
SELECT t.course_id, c.title
FROM takes t, course c
WHERE t.course_id = c.course_id
AND t.id = 12345;

-- Students in room 303
SELECT s.name AS student_name,
       c.title AS course_name,
       t.year
FROM student s
JOIN takes t ON s.ID = t.ID
JOIN section sec
  ON t.course_id = sec.course_id
 AND t.sec_id = sec.sec_id
 AND t.semester = sec.semester
 AND t.year = sec.year
JOIN course c
  ON t.course_id = c.course_id
WHERE sec.room_number = 303;

-- Courses taken in 2010
SELECT s.name,
       t.course_id,
       c.title AS c_name
FROM student s
JOIN takes t ON s.ID = t.ID
JOIN course c ON t.course_id = c.course_id
WHERE t.year = 2010;
