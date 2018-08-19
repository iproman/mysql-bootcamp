SELECT
  title,
  released_year
FROM books
WHERE released_year != 2017;


SELECT title, author_lname
FROM books AS excepting
WHERE author_lname != 'harris'
;