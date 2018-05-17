/* Print the number of books in the database */
SELECT
  COUNT(book_id)
  AS 'books in db'
FROM books;

/* Print out how many books were released in each year */
SELECT
  released_year,
  COUNT(*) AS '# books released'
FROM books
GROUP BY released_year;

/* Print out the total number of books in stock */
SELECT 
  SUM(stock_quantity)
  AS 'total stock'
FROM books;

/* Find the average released_year for each author */
SELECT
  CONCAT(author_fname, ' ', author_lname) AS 'author',
  ROUND(AVG(released_year), 1) AS 'avg released year'
FROM books
GROUP BY author_lname,
         author_fname;

/* Find the full name of the author who wrote the longest book */
SELECT 
  CONCAT(author_fname, ' ', author_lname) AS 'author',
  pages
FROM books
ORDER BY pages DESC
LIMIT 1;

/* Print average pages and number of books released for each year */
SELECT
  released_year AS 'year',
  COUNT(*) AS '# books',
  AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year;
