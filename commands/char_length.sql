-- 3
-- Character length
-- Counts characters in string

-- Example
SELECT CHAR_LENGTH(author_fname) FROM books;


-- Select author_lname and length of it
SELECT
	author_fname,
	CHAR_LENGTH(author_lname) as 'length'
FROM books;


-- ex. 'Eggers is 6 characters long'
SELECT
  CONCAT(
  author_lname,
  ' is ',
  CHAR_LENGTH(author_lname),
  ' characters long'
  ) AS 'Author last name'
FROM BOOKS;