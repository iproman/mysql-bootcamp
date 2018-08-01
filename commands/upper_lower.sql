-- 4
-- Changing Case with Upper and Lower

-- All results in uppercase
SELECT
  UPPER(author_lname)
FROM books;

-- Ex. all results in lowercase
SELECT
  UPPER(title)
FROM books;

-- Simple example of several codes
SELECT
  CONCAT('My favorite book is ', UPPER(title)) AS 'fav book'
FROM books;