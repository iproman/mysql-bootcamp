-- 2
-- Reversing words

-- Example
SELECT REVERSE('Hello World');

-- Reversing all results from books
SELECT REVERSE(author_fname) FROM books;

-- Concating and reversing
SELECT CONCAT(
	'woof', ' ', REVERSE('foow')
);


-- Concate author_fname with reversed author_fname
SELECT CONCAT(
	author_fname,
	REVERSE(author_fname)
) FROM books;