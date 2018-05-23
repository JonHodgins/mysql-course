/* Section 13: Many to Many Exercises */

/* Challenge 1: Print title and corresponding rating */
SELECT
    title,
    rating
FROM series
JOIN reviews
    ON series.id = reviews.series_id;
    
/* Challenge 2: Print title and average rating for that title,
 * ordered from lowest to highest 
 */
SELECT
    title,
    Round(Avg(rating), 1) AS average_rating
FROM series
JOIN reviews
    ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY average_rating;

/* Challenge 3: Print first name, last name, rating for each review */
SELECT 
    first_name,
    last_name,
    rating
FROM reviewers
JOIN reviews
    ON reviewers.id = reviews.reviewer_id;
    
/* Challenge 4: Find all unreviewed series in the database */
SELECT
    title AS unreviewed_series
FROM series
LEFT JOIN reviews
    ON series.id = reviews.series_id
WHERE rating IS NULL;

/* Challenge 5: Print genre and the average rating for each genre */
SELECT
    genre,
    Round(
        Avg(rating),
        2
    ) AS average_rating
FROM series
JOIN reviews
    ON series.id = reviews.series_id
GROUP BY genre;

/* Challenge 6: Print stats on each reviewer. i.e. number of reviews, min rating,
 * max rating, average rating, current status(have they written any reviews)
 */
SELECT first_name, 
       last_name, 
       Count(rating)                    AS 'count', 
       Ifnull(Min(rating), 0)           AS 'min', 
       Ifnull(Max(rating), 0)           AS 'max', 
       Round(Ifnull(Avg(rating), 0), 2) AS 'average_rating', 
       CASE 
         WHEN rating IS NOT NULL THEN 'ACTIVE' 
         ELSE 'INACTIVE' 
       END                              AS status 
FROM   reviewers 
       LEFT JOIN reviews 
              ON reviewers.id = reviews.reviewer_id 
GROUP  BY reviewers.id; 

/* Challenge 7: Print title of series, rating, and reviewer who wrote the
 * corresponding review
 */
SELECT title, 
       rating, 
       Concat(first_name, ' ', last_name) AS reviewer 
FROM   reviewers 
       JOIN reviews 
         ON reviewers.id = reviews.reviewer_id 
       JOIN series 
         ON series.id = reviews.series_id; 