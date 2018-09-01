-- CREATE DATABASE mb_school;

-- The Schema

-- CREATE TABLE students (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(100)
-- );


-- CREATE TABLE papers (
--     title VARCHAR(100),
--     grade INT,
--     student_id INT,
--     FOREIGN KEY (student_id)
--         REFERENCES students(id)
--         ON DELETE CASCADE
-- );

-- INSERT INTO students (first_name) VALUES
-- ('Caleb'),
-- ('Samantha'),
-- ('Raj'),
-- ('Carlos'),
-- ('Lisa');

-- INSERT INTO papers (student_id, title, grade ) VALUES
-- (1, 'My First Book Report', 60),
-- (1, 'My Second Book Report', 75),
-- (2, 'Russian Lit Through The Ages', 94),
-- (2, 'De Montaigne and The Art of The Essay', 98),
-- (4, 'Borges and Magical Realism', 89);

-- 1
-- +------------+---------------------------------------+-------+
-- | first_name | title                                 | grade |
-- +------------+---------------------------------------+-------+
-- | Samantha   | De Montaigne and The Art of The Essay |    98 |
-- | Samantha   | Russian Lit Through The Ages          |    94 |
-- | Carlos     | Borges and Magical Realism            |    89 |
-- | Caleb      | My Second Book Report                 |    75 |
-- | Caleb      | My First Book Report                  |    60 |
-- +------------+---------------------------------------+-------+

-- 2
-- +------------+---------------------------------------+-------+
-- | first_name | title                                 | grade |
-- +------------+---------------------------------------+-------+
-- | Caleb      | My First Book Report                  |    60 |
-- | Caleb      | My Second Book Report                 |    75 |
-- | Samantha   | Russian Lit Through The Ages          |    94 |
-- | Samantha   | De Montaigne and The Art of The Essay |    98 |
-- | Carlos     | Borges and Magical Realism            |    89 |
-- | Raj        | NULL                                  |  NULL |
-- | Lisa       | NULL                                  |  NULL |
-- +------------+---------------------------------------+-------+

-- 3
-- +------------+---------------------------------------+-------+
-- | first_name | title                                 | grade |
-- +------------+---------------------------------------+-------+
-- | Caleb      | My First Book Report                  |    60 |
-- | Caleb      | My Second Book Report                 |    75 |
-- | Samantha   | Russian Lit Through The Ages          |    94 |
-- | Samantha   | De Montaigne and The Art of The Essay |    98 |
-- | Carlos     | Borges and Magical Realism            |    89 |
-- | Raj        | MISSING                               |     0 |
-- | Lisa       | MISSING                               |     0 |
-- +------------+---------------------------------------+-------+

-- 4
-- +------------+---------+
-- | first_name | grade   |
-- +------------+---------+
-- | Samantha   | 96.0000 |
-- | Carlos     | 89.0000 |
-- | Caleb      | 67.5000 |
-- | Raj        |  0.0000 |
-- | Lisa       |  0.0000 |
-- +------------+---------+

--5
