/* Section 16: Intro to Nodejs Exercises */

/* Challenge 1: Find the earliest date that a user joined */
SELECT 'Find the earliest date that a user joined' AS  'Challenge 1:';

SELECT Date_format(created_at, '%M %D %Y') AS earliest_date 
FROM   users 
ORDER  BY created_at 
LIMIT  1; 

/* Challenge 2: Find the email of the first(earliest) user */
SELECT 'Find the email of the first(earliest) user' AS 'Challenge 2:';

SELECT *
FROM   users 
ORDER  BY created_at 
LIMIT  1; 

/* Challenge 3: Create table showing how many users joined in each month of the year */
SELECT 'Create table showing how many users joined in each month of the year' AS 'Challenge 3:';

SELECT Monthname(created_at) AS month, 
       Count(*)              AS count 
FROM   users 
GROUP  BY month 
ORDER  BY count DESC; 

/* Challenge 4: Count the number of users with yahoo emails */
SELECT 'Count the number of users with yahoo emails' AS 'Challenge 4:';

SELECT 
    Count(email) AS yahoo_users
FROM users
WHERE email LIKE '%@yahoo.com';

/* Challenge 5: Calculate the total number of users for each email host */
SELECT 'Calculate the total number of users for each email host' AS 'Challenge 5:';

SELECT 
    CASE
        WHEN email LIKE '%@gmail.com' THEN 'gmail'
        WHEN email LIKE '%@yahoo.com' THEN 'yahoo'
        WHEN email LIKE '%@hotmail.com' THEN 'hotmail'
        ELSE 'other'
    END AS provider,
    COUNT(*) AS total_users
FROM users
GROUP BY provider
ORDER BY total_users DESC;
