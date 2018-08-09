-- 13

SELECT SUM(released_year) FROM books;

SELECT author_fname, author_lname, SUM(pages)
FROM books
GROUP BY author_fname, author_lname;