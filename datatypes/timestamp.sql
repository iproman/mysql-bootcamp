-- CREATE TABLE comments (
--   content VARCHAR(100)
--   created_at TIMESTAMP DEFAULT NOW()
-- );
-- INSERT INTO comments (content)
-- VALUES('here are we go');

SELECT * FROM comments ORDER BY created_at DESC;

CREATE TABLE comments2 (
  content VARCHAR(100)
  created_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);