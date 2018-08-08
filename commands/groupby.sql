SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;

SELECT title, author_fname, author_lname FROM books;

SELECT title, author_fname, author_lname FROM books GROUP BY author_lname;

SELECT author_fname, author_lname, COUNT(*)
FROM books GROUP BY author_lname, author_fname;


+----------------------------+
| books                      |
+----------------------------+
| In 1945 1 book(s) released |
| In 1981 1 book(s) released |
| In 1985 1 book(s) released |
...

SELECT
  CONCAT(
    'In ',
    released_year,
    ' ',
    COUNT(*),
    ' book(s) released'
  ) AS books
FROM books
GROUP BY released_year;