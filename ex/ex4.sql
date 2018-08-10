-- ex4

-- Ex 1
-- Print the number of books in the databases;

-- Solution
SELECT
  COUNT(*) AS 'number of books'
 FROM BOOKS;


-- Ex 2
-- Print out how many books were released in each year

-- Solution
SELECT
  released_year,
  COUNT(*)
FROM BOOKS
GROUP BY released_year;