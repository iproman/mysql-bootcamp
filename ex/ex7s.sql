-- 1
-- SELECT first_name, title, grade
-- FROM students
-- RIGHT JOIN papers
-- ON students.id = papers.student_id
-- ORDER BY grade DESC;

-- 2
-- SELECT first_name, title, grade
-- FROM students
-- LEFT JOIN papers
-- ON students.id = papers.student_id;

-- 3
-- SELECT
--   first_name,
--   IFNULL(title, 'MISSING') AS title,
--   IFNULL(grade, 0) as grade
-- FROM students
-- LEFT JOIN papers
-- ON students.id = papers.student_id;

-- 4
-- SELECT
--   first_name,
--   AVG(IFNULL(grade, 0)) AS grade
-- FROM students
-- LEFT JOIN papers
-- ON students.id = papers.student_id
-- GROUP BY (students.id)
-- ORDER BY (grade) DESC
-- ;

-- 5
SELECT
  first_name,
  IFNULL(AVG(grade), 0) AS grade,
  CASE
    WHEN AVG(grade) >= 75 THEN 'PASSING'
    WHEN AVG(grade) IS NULL THEN 'FAILING'
    ELSE 'FAILING'
  END AS passing_status
FROM students
LEFT JOIN papers
ON students.id = papers.student_id
GROUP BY(students.id)
ORDER BY grade DESC
;