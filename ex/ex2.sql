-- ex sq 2

-- 1 task
+----------------------------------------------------------------+
| ?DERTAH HCUS HTIW EM TA KOOL TAC YM SEOD YHW                   |
+----------------------------------------------------------------+

-- Des
SELECT
  REVERSE(
    UPPER('why does my cat look at me with such hatred?')
  );
-- 1 task

-- 2 task
-- what this prints out
SELECT
 REPLACE
 (
 CONCAT('I',' ', 'like', ' ' , 'cats'),' ', '_'
);

-- Des
+--------------------------------------------------------------+
| I_like_cats                                                  |
+--------------------------------------------------------------+
-- 2 task

-- 3 task
-- Replace spaces in titles with '->'
+--------------------------------------------------------------+
| title                                                        |
+--------------------------------------------------------------+
| The->Namesake                                                |
| Norse->Mythology                                             |
+--------------------------------------------------------------+

-- Des
SELECT
   REPLACE(
       title, ' ', '->'
   )
   AS title
FROM books;
-- 3 task


-- SELECT 
-- 	author_lname AS forwards,
-- 	REVERSE(author_lname) AS backwards
-- FROM books;

-- SELECT 
-- 	UPPER(
-- 		CONCAT(
-- 			author_fname, ' ', author_lname
-- 			)
-- 		)
-- 	AS 'full name in caps'
-- FROM books;

-- released_year
-- title

-- SELECT 
-- 	CONCAT(
-- 		title, ' was released in ', released_year
-- 		)
-- 	AS blurb
-- FROM books;

-- SELECT 
-- 	title,
-- 	LENGTH(title) 
-- 	AS 'character count'
-- FROM books;


-- american g... as short title, gaiman, neil as author, 12 in stock as quantity

-- +---------------+----------------------+--------------+
-- | short title   | author               | quantity     |
-- +---------------+----------------------+--------------+
-- | The Namesa... | Lahiri,Jhumpa        | 32 in stock  |
-- | Norse Myth... | Gaiman,Neil          | 43 in stock  |

-- SELECT
-- 	CONCAT(
-- 		SUBSTR(title, 1, 10), '...')
-- 	AS 'short title',
--
-- 	CONCAT(author_lname, ',', author_fname)
-- 	AS 'author',
--
-- 	CONCAT(stock_quantity, ' in stock')
-- 	AS 'quantity'
-- FROM books LIMIT 2;






























