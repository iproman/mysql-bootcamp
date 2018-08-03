-- ex sq 2

-- 1 task
-- This string (why does my cat look at me with such hatred?) might be
-- reversed and uppercase
+----------------------------------------------------------------+
| ?DERTAH HCUS HTIW EM TA KOOL TAC YM SEOD YHW                   |
+----------------------------------------------------------------+

-- Solution
SELECT
  REVERSE(
    UPPER('why does my cat look at me with such hatred?')
  );


-- 2 task
-- what this prints out
SELECT
 REPLACE
 (
 CONCAT('I',' ', 'like', ' ' , 'cats'),' ', '_'
);

-- Solution
+--------------------------------------------------------------+
| I_like_cats                                                  |
+--------------------------------------------------------------+


-- 3 task
-- Replace spaces in titles with '->'
+--------------------------------------------------------------+
| title                                                        |
+--------------------------------------------------------------+
| The->Namesake                                                |
| Norse->Mythology                                             |
+--------------------------------------------------------------+

-- Solution
SELECT
   REPLACE(
       title, ' ', '->'
   )
   AS title
FROM books;


-- 4 task
-- Print This Out
+----------------+----------------+
| forwards       | backwards      |
+----------------+----------------+
| Lahiri         | irihaL         |
| Gaiman         | namiaG         |
+----------------+----------------+

-- Solution
SELECT
	author_lname AS forwards,
	REVERSE(author_lname) AS backwards
FROM books;


-- 5 task
-- Show full name in caps

+----------------------+
| full name in caps    |
+----------------------+
| JHUMPA LAHIRI        |
| DAVID FOSTER WALLACE |
+----------------------+

-- Solution
SELECT
	UPPER(
		CONCAT(
			author_fname, ' ', author_lname
			)
		)
	AS 'full name in caps'
FROM books;


-- 6 task
-- result might be like this.
+--------------------------------------------------------------------------+
| blurb                                                                    |
+--------------------------------------------------------------------------+
| The Namesake was released in 2003                                        |
| Norse Mythology was released in 2016                                     |
+--------------------------------------------------------------------------+

-- Solution
SELECT
	CONCAT(
		title, ' was released in ', released_year
		)
	AS blurb
FROM books;


-- 7 task
-- Result
+-----------------------------------------------------+-----------------+
| title                                               | character count |
+-----------------------------------------------------+-----------------+
| The Namesake                                        |              12 |
| Norse Mythology                                     |              15 |
+-----------------------------------------------------+-----------------+

-- Solution
SELECT
	title,
	LENGTH(title)
	AS 'character count'
FROM books;


-- 8 task
-- Result
+---------------+----------------------+--------------+
| short title   | author               | quantity     |
+---------------+----------------------+--------------+
| The Namesa... | Lahiri,Jhumpa        | 32 in stock  |
| Norse Myth... | Gaiman,Neil          | 43 in stock  |
+---------------+----------------------+--------------+

-- Solution
SELECT
	CONCAT(
		SUBSTR(title, 1, 10), '...'
  ) AS 'short title',
	CONCAT(
	  author_lname, ',', author_fname
	) AS 'author',
	CONCAT(
	  stock_quantity, ' in stock'
  ) AS 'quantity'
FROM books LIMIT 2;






























