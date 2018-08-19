-- Solution 1
-- States (AK, AZ, AR, etc)
-- Sex (m, f)
--
CREATE TABLE test(
  id INT NOT NULL AUTO_INCREMENT,
  short_name CHAR(2),
  PRIMARY KEY(id)
);

INSERT INTO test(
  short_name
) VALUES (
  'AL'
), ('AK'), ('AZ'), ('AR'), ('CA');

SELECT * FROM test;


-- Solution 2
CREATE TABLE inventory (
  id INT NOT NULL AUTO_INCREMENT,
  item_name VARCHAR(50),
  price DECIMAL(8,2),
  quantity INT,
);

-- Solution 3
-- TIMESTAMP is good for rows like created_at, updated_at
-- DATETIME is good for rows like birthday, some history event happened long time ago

-- Solution 4
SELECT CURTIME() as 'Current time';

-- Solution 5
SELECT CURDATE() as 'Current date';

-- Solution 6
SELECT DAYOFWEEK(NOW()) as 'Current day of week';
-- SELECT DATE_FORMAT(NOW(), '%w') as 'Current day of week';
-- SELECT WEEKDAY(NOW()) as 'Current day of week';

-- Solution 7
SELECT DAYNAME(NOW()) as 'Current day of week';

-- Solution 8
SELECT DATE_FORMAT(
    NOW(),
    '%m/%d/%y %h:%i:%s'
    ) as 'Current day and time'
;

-- Solution 9
SELECT DATE_FORMAT(
  NOW(), '%M %D at %h:%i'
  ) as 'Current day and time'
;

-- Solution 10
CREATE TABLE tweets_table(
  content VARCHAR(150),
  username VARCHAR(20),
  created_at TIMESTAMP DEFAULT NOW()
);










