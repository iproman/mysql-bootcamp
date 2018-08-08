-- 12

SELECT MIN(title) FROM books;

SELECT MAX(pages), title FROM books;

-- slower
SELECT title, pages FROM books WHERE pages =
(SELECT MIN(pages) FROM books);

-- faster
SELECT title,pages FROM books ORDER BY pages ASC LIMIT 1;