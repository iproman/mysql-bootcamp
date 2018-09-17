-- CREATE DATABASE mb_trigger_demo;
--
-- CREATE TABLE users(
--   username VARCHAR(100),
--   age INT
-- );
--
-- INSERT INTO users(username, age)
--   VALUES('rob', 16);
--
-- DELETE FROM follows WHERE follower_id=2 AND followee_id=1;

SHOW TRIGGERS;

DROP TRIGGER prevent_self_follows;