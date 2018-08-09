-- 14

SELECT AVG(pages) FROM BOOKS;

SELECT AVG(stock_quantity)
FROM books
GROUP BY released_year;