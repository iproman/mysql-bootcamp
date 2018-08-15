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

-- SELECT * FROM people;

-- DAY()
-- DAYNAME()
-- DAYOFWEEK()
-- DAYOFYEAR()

-- SELECT name, birthdate FROM people;
-- SELECT name, DAY(birthdate) FROM people;
-- SELECT name, DAYNAME(birthdate) FROM people;
-- SELECT name, DAYOFWEEK(birthdate) FROM people;
-- SELECT name, DAYOFYEAR(birthdate) FROM people;
-- SELECT name, MONTH (birthdate) FROM people;
-- SELECT DATE_FORMAT(birthdate, '%W %M, %Y') from people;
SELECT DATE_FORMAT(birthdate, '%m/%d/%Y') from people;