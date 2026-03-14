-- NVL example
SELECT name,
       NVL(salary,0) AS salary
FROM instructor;

-- Round example
SELECT salary,
       ROUND(salary/3,-2)
FROM instructor;
