-- ex sq 3 (129v)

-- 1 TASK
-- Select all story collections
-- titles that contain 'stories'
+-----------------------------------------------------+
| title                                               |
+-----------------------------------------------------+
| What We Talk About When We Talk About Love: Stories |
| Where I'm Calling From: Selected Stories            |
| Oblivion: Stories                                   |
+-----------------------------------------------------+

Solution
SELECT
	title
FROM books
WHERE title LIKE '%stories%';


-- 2 TASK
-- Find the longest book
-- Print out the title and page count

-- Solution
SELECT
	title, pages
FROM books ORDER BY pages DESC LIMIT 1;


-- 3 TASK
-- Print a summary containing the title and
-- year, from the 3 moset recent books
+-----------------------------+
| summary                     |
+-----------------------------+
| Lincoln In The Bardo - 2017 |
| Norse Mythology - 2016      |
| 10% Happier - 2014          |
+-----------------------------+

-- Solution
SELECT
	CONCAT(
		title,
		' - ',
		released_year
	) as 'summary'
FROM books
ORDER BY released_year DESC
LIMIT 0,3;

-- 4 TASK
-- Find all books with an author_lname
-- that contains a space(' ');
+----------------------+----------------+
| title                | author_lname   |
+----------------------+----------------+
| Oblivion: Stories    | Foster Wallace |
| Consider the Lobster | Foster Wallace |
+----------------------+----------------+

-- Solution
SELECT
	title, author_lname
FROM books
WHERE author_lname LIKE "% %";

-- 5 TASK
-- Find the 3 books with the
-- lowest stock
-- Select title, year, and stock
+-----------------------------------------------------+---------------+----------------+
| title                                               | released_year | stock_quantity |
+-----------------------------------------------------+---------------+----------------+
| Where I'm Calling From: Selected Stories            |          1989 |             12 |
| American Gods                                       |          2001 |             12 |
| What We Talk About When We Talk About Love: Stories |          1981 |             23 |
+-----------------------------------------------------+---------------+----------------+

-- Solution
SELECT
	title,
	released_year,
	stock_quantity
FROM books
ORDER BY stock_quantity LIMIT 0,3;

-- 6 TASK
-- Print title and author_lname, sorted first
-- by author_lname and then by title

-- Solution
SELECT
	title, author_lname
FROM books
ORDER BY author_lname, title;


-- 7 TASK
-- Make this happen
-- Sorted alphabetically by last name
+----------------------------------------------+
| yell                                         |
+----------------------------------------------+
| MY FAVOURITE AUTHOR IS RAYMOND CARVER!       |
| MY FAVOURITE AUTHOR IS RAYMOND CARVER!       |
| MY FAVOURITE AUTHOR IS MICHAEL CHABON!       |
| MY FAVOURITE AUTHOR IS DON DELILLO!          |
....

SELECT
	UPPER(
	CONCAT(
		'my favourite author is ',
		author_fname,
		' ',
		author_lname,
		'!')
	) AS yell
FROM books
ORDER BY author_lname
;