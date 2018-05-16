/* Select all story collections */
-- SELECT title FROM books WHERE title LIKE '%stories%';

/* Find the longest book */
-- SELECT title, 
--       pages 
-- FROM   books 
-- ORDER  BY pages DESC 
-- LIMIT  1; 

/* Print a summary containing the title and year for the 3 most recent books */
SELECT Concat(title, ' - ', released_year) AS 'summary' 
FROM   books 
ORDER  BY released_year DESC 
LIMIT  3; 