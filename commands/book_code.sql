-- 1
SELECT
	CONCAT
	(
		SUBSTRING(title, 1, 5),
		'...'
	) AS 'short title'
FROM books;

SELECT
	CONCAT
	(
		SUBSTRING(
			REPLACE(author_lname,'e','*'),
			1,
			10
		),
		'...'
	) 
FROM books;



