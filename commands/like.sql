-- 9

SELECT
	author_fname, author_lname
FROM books
WHERE 
	author_fname LIKE 'da%';

SELECT 
	title
FROM books
WHERE title LIKE '%the%';

SELECT 
	title, stock_quantity
FROM books
WHERE stock_quantity LIKE '____';

SELECT 
	title, stock_quantity
FROM books
WHERE title	 LIKE '%\%%';

SELECT 
	title, stock_quantity
FROM books
WHERE title	 LIKE '%\_%';