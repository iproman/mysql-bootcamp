-- INT
-- DECIMAL
--
--     Total number of digits
--         |
--         ↓
-- DECIMAL(5,2);
--           ↑
--           |
--        Digits after decimal


-- DECIMAL(5,2)
--
-- 5 digits
-- <----->
--  999.99 *******
--     <-->
--    2 digits

-- CREATE TABLE items(price DECIMAL(5,2));
-- INSERT INTO items(price) VALUES(7);
-- INSERT INTO items(price) VALUES(7988888);
-- INSERT INTO items(price) VALUES(34.88);
-- INSERT INTO items(price) VALUES(289.9999);
-- INSERT INTO items(price) VALUES(1.9999);

SELECT * FROM items;
