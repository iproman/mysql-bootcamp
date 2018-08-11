-- Solution 1
SELECT
  COUNT(*) AS 'number of books'
 FROM BOOKS;

-- Solution 2
SELECT
  released_year, COUNT(*)
FROM books
GROUP BY released_year;

-- Solution 3
SELECT
  SUM(stock_quantity) as total
FROM BOOKS;

-- Solution 4
SELECT author_fname, author_lname ,AVG(released_year)
FROM books
GROUP BY author_lname, author_fname;

-- Solution 5
-- faster
SELECT
  CONCAT(author_fname, ' ', author_lname) as fullname,
  pages
FROM books
ORDER BY pages DESC LIMIT 1;
-- slower
SELECT
  CONCAT(author_fname, ' ', author_lname) as fullname,
  pages
  FROM books WHERE pages =
(SELECT MAX(pages) FROM books);

-- Solution 6
SELECT
  released_year AS 'year',
  COUNT(*) AS '# books',
  AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year;