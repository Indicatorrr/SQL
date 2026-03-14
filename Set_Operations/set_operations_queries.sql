-- Find courses that ran in Fall 2009 or Spring 2010
SELECT course_id
FROM section
WHERE semester='Fall' AND year=2009
UNION
SELECT course_id
FROM section
WHERE semester='Spring' AND year=2010;

-- Courses that ran in both semesters
SELECT course_id
FROM section
WHERE semester='Fall' AND year=2009
INTERSECT
SELECT course_id
FROM section
WHERE semester='Spring' AND year=2010;

-- Courses in Fall 2009 but not Spring 2010
SELECT course_id
FROM section
WHERE semester='Fall' AND year=2009
MINUS
SELECT course_id
FROM section
WHERE semester='Spring' AND year=2010;
