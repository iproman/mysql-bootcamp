SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;

SELECT title, author_fname, author_lname FROM books;

SELECT title, author_fname, author_lname FROM books GROUP BY author_lname;

SELECT author_fname, author_lname, COUNT(*)
FROM books GROUP BY author_lname, author_fname;
