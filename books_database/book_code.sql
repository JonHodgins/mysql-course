-- SELECT
--     SUBSTRING(
--     REPLACE(title, 'e', '3'),
-- FROM books;

-- SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long');

-- SELECT CONCAT(title, ' was released in ', released_year) AS 'blurb' FROM books;

-- SELECT title, CHAR_LENGTH(title) AS 'character count' FROM books;

-- SELECT
--   CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short title',
--   CONCAT(author_lname, ',', author_fname) AS 'author',
--   CONCAT(stock_quantity, ' in stock') AS 'quanity'
-- FROM books;

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);