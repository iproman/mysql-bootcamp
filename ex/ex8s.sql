-- 1.
SELECT * FROM users ORDER BY created_at LIMIT 1;
-- Another solution
SELECT
	DATE_FORMAT(MIN(created_at), '%M %D %Y') AS earliest_date
FROM users;

-- 2.
SELECT email FROM users ORDER BY created_at LIMIT 1;
-- Another solution
SELECT * FROM users
WHERE created_at = (SELECT MIN(created_at) FROM users);

-- 3.
SELECT
  DATE_FORMAT(created_at, '%M') as month,
  COUNT(*) as count
FROM users
GROUP BY month
ORDER BY month;
-- Another solution
SELECT
  MONTHNAME(created_at) as month,
  COUNT(*) AS count
FROM users
GROUP BY month
ORDER BY month
;

-- 4.
SELECT
  COUNT(*) as 'yahoo_users'
FROM users
WHERE email LIKE '%yahoo.com'
;

-- 5
SELECT
  CASE
    WHEN email LIKE '%@gmail.com' THEN 'gmail'
    WHEN email LIKE '%@yahoo.com' THEN 'yahoo'
    WHEN email LIKE '%@hotmail.com' THEN 'hotmail'
    ELSE 'other'
  END AS provider,
  COUNT(email) as total
FROM users
GROUP BY provider
;