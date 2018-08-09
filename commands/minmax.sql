-- 12

SELECT MIN(title) FROM books;

SELECT MAX(pages), title FROM books;

-- slower
SELECT title, pages FROM books WHERE pages =
(SELECT MIN(pages) FROM books);

-- faster
SELECT title,pages FROM books ORDER BY pages ASC LIMIT 1;

SELECT author_fname, author_lname,
  MIN(released_year)
FROM books
GROUP BY author_lname, author_fname;

-- slower
SELECT title, pages FROM books WHERE pages =
(SELECT MIN(pages) FROM books);

-- faster
SELECT title,pages FROM books ORDER BY pages ASC LIMIT 1;