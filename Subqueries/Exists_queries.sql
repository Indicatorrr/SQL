-- Courses offered in both semesters using EXISTS
SELECT s1.course_id
FROM section s1
WHERE s1.semester='Fall'
AND s1.year=2009
AND EXISTS (
    SELECT s2.course_id
    FROM section s2
    WHERE s1.course_id=s2.course_id
    AND s2.semester='Spring'
    AND s2.year=2010
);

-- Students who took all Biology courses
SELECT s.ID, s.name
FROM student s
WHERE NOT EXISTS (
    SELECT c.course_id
    FROM course c
    WHERE c.dept_name='Biology'
    AND NOT EXISTS (
        SELECT *
        FROM takes t
        WHERE t.ID=s.ID
        AND t.course_id=c.course_id
    )
);
