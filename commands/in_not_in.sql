SELECT title, author_lname
FROM books
WHERE
  author_lname = 'Carver' OR
  author_lname = 'Lahiri' OR
  author_lname = 'Smith';

SELECT title, author_lname
FROM books
WHERE author_lname
IN ('Carver', 'Lahiri', 'Smith');

SELECT released_year, author_fname
FROM books
WHERE released_year
IN (2003, 2004, 2005);

SELECT released_year, author_fname
FROM books
WHERE released_year
NOT IN (2000, 2002, 2004, 2006, 2008, 20010, 2012, 20014, 2016);

SELECT released_year, author_fname
FROM books
WHERE released_year >= 2000
AND released_year
NOT IN (2000, 2002, 2004, 2006, 2008, 20010, 2012, 20014, 2016);

SELECT released_year, author_fname
FROM books
WHERE released_year >= 2000
AND released_year
 % 2 != 0;

