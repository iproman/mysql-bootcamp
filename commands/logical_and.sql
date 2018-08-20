SELECT released_year, author_lname FROM BOOKS
WHERE author_lname = 'Eggers';

SELECT released_year, author_lname
FROM books
WHERE released_year > 2010;

SELECT released_year, author_lname
FROM books
WHERE author_lname='Eggers' AND
released_year > 2010;

SELECT released_year, author_lname
FROM books
WHERE author_lname='Eggers' &&
released_year > 2010;