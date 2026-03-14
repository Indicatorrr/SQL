-- Course with no students
SELECT title
FROM course
WHERE course_id NOT IN
      (SELECT course_id FROM takes);

-- Courses offered in both semesters
SELECT DISTINCT course_id
FROM section
WHERE course_id IN (
    SELECT course_id
    FROM section
    WHERE semester='Fall' AND year=2009
    INTERSECT
    SELECT course_id
    FROM section
    WHERE semester='Spring' AND year=2010
);

-- Students whose name matches instructor
SELECT name
FROM student
WHERE name IN (SELECT name FROM instructor);

-- Instructor salary greater than some Biology instructor
SELECT name
FROM instructor
WHERE salary >= SOME (
    SELECT salary
    FROM instructor
    WHERE dept_name='Biology'
);

-- Instructor salary greater than all Biology instructors
SELECT name
FROM instructor
WHERE salary >= ALL (
    SELECT salary
    FROM instructor
    WHERE dept_name='Biology'
);
