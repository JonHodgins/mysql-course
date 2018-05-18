/* Section 11: Logical Operators Exercises */

/* Evaluate the following: */
SELECT 10 != 10; 
-- false
SELECT 15 > 14 && 99 - 5 <= 94;
-- true
SELECT 1 in (5,3)
              || 9 BETWEEN 8 AND    10;
-- true

/* Select all books written before 1980 (noninclusive) */
SELECT title
FROM   books
WHERE  released_year < 1980; 

/* Select all books written by Eggers or Chabon */
SELECT title,
       author_lname
FROM   books
WHERE  author_lname IN ( 'Eggers', 'Chabon' ); 

/* Select all books written by lahiri, published after 2000 */
SELECT title,
       author_lname,
       released_year
FROM   books
WHERE  released_year > 2000
       AND author_lname = 'Lahiri'
ORDER  BY released_year; 

/* Select all books with page counts between 100 and 200 */
SELECT title,
       pages
FROM   books
WHERE  pages BETWEEN 100 AND 200; 

/* Select all books where author's last name starts with a 'C' or an 'S' */
SELECT title,
       author_lname
FROM   books
WHERE  author_lname LIKE 'C%'
        OR author_lname LIKE 'S%';
        
/* Use CASE statement to assign the books a type: 
 * (Novel, Memoir, Short Stories) 
*/
SELECT title,
       author_lname,
       CASE
         WHEN title LIKE '%stories%' THEN 'Short Stories'
         WHEN title = 'Just Kids'
               OR title = 'A Heartbreaking Work of Staggering Genius' THEN
         'Memoir'
         ELSE 'Novel'
       END AS 'type'
FROM   books; 

/* Bonus: Count number of books by each author */
SELECT Concat(author_fname, ' ', author_lname) AS 'author',
       CASE
         WHEN Count(*) = 1 THEN '1 book'
         ELSE Concat(Count(*), ' books')
       END AS '# books'
FROM   books
GROUP  BY author_lname,
          author_fname; 

