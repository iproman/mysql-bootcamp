SELECT released_year, author_lname, stock_quantity
FROM books
WHERE author_lname='Eggers' ||
released_year > 2010 OR
stock_quantity > 100;

SELECT 40 <= 100 || -2 > 0;
SELECT 10 > 5 || 5 = 5;
SELECT 'a' = 5 || 3000 > 2000;