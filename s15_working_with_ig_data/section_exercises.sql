/* Section 15: Working with Instagram Data Exercises */

/* Challenge 1: Find the 5 oldest users */
SELECT *
FROM users
ORDER BY created_at
LIMIT 5;

/* Challenge 2: What day of the week do most users register on? */
SELECT
    Date_format(created_at, '%W') AS most_popular_day,
    Count(*) AS total
FROM users
GROUP BY most_popular_day
ORDER BY Count(created_at) DESC
LIMIT 1;

/* Challenge 3: Find users who have never posted a photo */
SELECT
    users.id,
    username
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE photos.id IS NULL;

/* Challenge 4: Find the most liked photo, and who posted it */
SELECT
    users.username,
    photos.image_url,
    Count(*) AS likes
FROM photos
JOIN likes
    ON photos.id = likes.photo_id
JOIN users
    ON users.id = photos.user_id
GROUP BY photos.id
ORDER BY likes DESC
LIMIT 1;

/* Challenge 5: How many times does an average user post? */
SELECT ( (SELECT Count(*) 
          FROM   photos) / (SELECT Count(*) 
                            FROM   users) ) AS 'avg'; 

/* Challenge 6: What are the top 5 most commonly used hashtags? */
SELECT
    tags.tag_name,
    Count(*) AS times_used
FROM photo_tags
JOIN tags
    ON tags.id = photo_tags.tag_id
GROUP BY tags.id
ORDER BY times_used DESC
LIMIT 5;

/* Challenge 7: Find users who have liked every single photo on the site (likely bots) */
SELECT
    users.username,
    Count(*) as total
FROM likes
JOIN users
    ON users.id = likes.user_id
GROUP BY users.id
HAVING total = (SELECT Count(*) FROM photos);
