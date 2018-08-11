-- ex4

-- Ex 1
-- Print the number of books in the databases;

-- Ex 2
-- Print out how many books
-- were released in each year
--
-- +---------------+----------+
-- | released_year | COUNT(*) |
-- +---------------+----------+
-- |          1945 |        1 |
-- |          1981 |        1 |
-- |          1985 |        1 |
-- ...

-- Ex 3
-- Print out the total number
-- of books in stock
--
-- +-------+
-- | total |
-- +-------+
-- |  2450 |
-- +-------+

-- Ex 4
-- Find the average released_year
-- for each author
--
-- +--------------+----------------+--------------------+
-- | author_fname | author_lname   | AVG(released_year) |
-- +--------------+----------------+--------------------+
-- | Raymond      | Carver         |          1985.0000 |
-- | Michael      | Chabon         |          2000.0000 |
-- | Don          | DeLillo        |          1985.0000 |
-- ...

-- Ex 5
-- Find the full name of the author
-- who wrote the longest book
--
-- +----------------+-------+
-- | fullname       | pages |
-- +----------------+-------+
-- | Michael Chabon |   634 |
-- +----------------+-------+

-- Ex 6
-- Make this happen
--
-- +------+---------+-----------+
-- | year | # books | avg pages |
-- +------+---------+-----------+
-- | 1945 |       1 |  181.0000 |
-- | 1981 |       1 |  176.0000 |
-- | 1985 |       1 |  320.0000 |
-- ...