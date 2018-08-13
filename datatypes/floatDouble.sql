-- DECIMAL --> fixed
-- FLOAT DOUBLE --> store larger numbers using less space
--
-- +---------------+----------------------+-------+
-- | Data Type | Memory Needed | Precision Issues |
-- +---------------+----------------------+-------+
-- | FLOAT     | 4 Bytes       | ~ 7 digits       |
-- | DOUBLE    | 8 Bytes       | ~ 15 digits      |
-- +---------------+----------------------+-------+
CREATE TABLE thingies (price FLOAT);
INSERT INTO thingies(price) VALUES (88.45);
INSERT INTO thingies(price) VALUES (8877.45);
INSERT INTO thingies(price) VALUES (8877665544.45);

SELECT * FROM thingies;