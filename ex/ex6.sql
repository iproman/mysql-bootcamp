-- ex6

-- Ex 1
-- Evaluate the following
SELECT 10 != 10; -- 0
SELECT 15 > 14 && 99-5 <= 94; -- 1
SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10; -- 0 (0, 1)

-- Ex 2
-- Select all books written
-- before 1980 (non inclusive)

-- Ex 3
-- Select all books
-- written by Eggers or Chabon

-- Ex 4
-- Select all books
-- written by Lahiri,
-- Published after 2000

-- Ex 5
-- Select all books with
-- page counts between
-- 100 and 200

-- Ex 6
-- Select all books where
-- author_lname starts
-- with a 'C' or an 'S'

-- Ex 7
-- If title contains 'stories' -> Short Stories
-- Just kids and a Hearthbreaking Work -> Memoir
-- Everything Else -> Novel
-- +-----------------------------------------------------+----------------+---------------+
-- | title                                               | author_lname   | TYPE          |
-- +-----------------------------------------------------+----------------+---------------+
-- | The Namesake                                        | Lahiri         | Novel         |
-- | Norse Mythology                                     | Gaiman         | Novel         |
-- | Just Kids                                           | Smith          | Memoir        |
-- | A Heartbreaking Work of Staggering Genius           | Eggers         | Memoir        |
-- | Coraline                                            | Gaiman         | Novel         |
-- | What We Talk About When We Talk About Love: Stories | Carver         | Short Stories |
-- | Where I'm Calling From: Selected Stories            | Carver         | Short Stories |
-- ...