SELECT
  CONCAT('There was ', COUNT(*), ' movie(s) released in ', released_year) AS 'Count'
FROM books
GROUP BY released_year;