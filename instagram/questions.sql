-- WE want to reward our users
-- who have been aroun the longest.
-- 1. Find the 5 oldest users.

SELECT *
FROM users
ORDER BY created_at
LIMIT 5;


-- What day of the week do
-- most users register on?
-- We need to figure out when
-- to schedule an ad campaign.
-- 2. Most Popular Registration Date

SELECT
--   DATE_FORMAT(created_at, "%a") as days,
  DAYNAME(created_at) as days,
  COUNT(id) as id
FROM users
GROUP BY days
ORDER BY id DESC
LIMIT 2;


-- We want to target our inactive
-- users with an email campaign.
-- 3. FIND the users who have never
-- posted a photo;

SELECT *
FROM users
LEFT JOIN photos
ON users.id = photos.user_id
WHERE photos.id IS NULL;


-- We're running a new contest
-- to see who can get the most
-- likes on a single photo.
-- WHO WON??!!
-- 4. Identify most popular photo(and user who created it)
SELECT
  username,
  image_url,
  COUNT(*) AS total
FROM likes
JOIN photos
  ON likes.photo_id = photos.id
JOIN users
  ON photos.user_id = users.id
GROUP BY photo_id
ORDER BY total DESC
LIMIT 1
;

-- Our Investors want to know ...
-- 5. How many time does the
-- average user post?

SELECT
  (SELECT COUNT(*) FROM photos)
  /(SELECT COUNT(*) FROM users) as avg;


-- A brand wants to know which hashtags to
-- use in a post
-- 6. What are the top 5 most
-- commonly used hashtags?

SELECT
  tag_name,
  COUNT(*) as counts
FROM photos
INNER JOIN photo_tags
  ON photo_tags.photo_id = photos.id
INNER JOIN tags
  ON tags.id = photo_tags.tag_id
GROUP BY tag_id
ORDER BY counts DESC
LIMIT 5
;

-- We have a small problem with
-- bots on our site ...
-- 7. Find users who have liked
-- every single photo on the site
SELECT
	username,
	COUNT(*) as total
FROM users
INNER JOIN likes
  ON users.id = likes.user_id
GROUP BY username
HAVING total = (SELECT COUNT(*) FROM photos)
;