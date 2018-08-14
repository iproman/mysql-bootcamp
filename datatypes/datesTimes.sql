-- DATE
-- values with a date but no time YYYY:MM:DD

-- TIME
-- values with a time but no date HH:MM:SS

-- DATETIME
-- values with a date and time YYYY:MM:DD HH:MM:SS
-- CREATE TABLE people(
-- name VARCHAR(100),
-- birthdate DATE,
-- birth TIME,
-- birthdt DATETIME,
-- );

-- CURDATE()
-- CURTIME()
-- NOW()
-- INSERT INTO people(
--   name,
--   birthdate,
--   birth,
--   birthdt)
-- VALUES(
--   'Niko',
--   CURDATE(),
--   CURTIME(),
--   NOW()
-- );

SELECT * FROM people;