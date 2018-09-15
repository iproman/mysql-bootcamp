-- 1.
SELECT * FROM users ORDER BY created_at LIMIT 1;

-- 2.
SELECT email FROM users ORDER BY created_at LIMIT 1;

-- 3.
SELECT
  DATE_FORMAT(created_at, '%M') as month,
  COUNT(*) as count
FROM users
GROUP BY month
ORDER BY month;

-- 4.
SELECT
  COUNT(*) as 'yahoo_users'
FROM users
WHERE email LIKE '%yahoo.com'
;

-- 5
SELECT
  CASE
    WHEN email LIKE '%gmail%'
      THEN 'gmail'
    WHEN email LIKE '%yahoo%'
      THEN 'yahoo'
    WHEN email LIKE '%hotmail%'
      THEN 'hotmail'
    ELSE 'other'
  END AS provider,
  COUNT(email) as total
FROM users
GROUP BY provider
;