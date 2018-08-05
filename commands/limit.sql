-- 8
SELECT title FROM books;

SELECT * FROM books LIMIT 1;

SELECT 
	title, released_year
	FROM books
	ORDER BY released_year
	DESC LIMIT 5;

SELECT 
	title, released_year
	FROM books
	ORDER BY released_year
	DESC LIMIT 1,3;