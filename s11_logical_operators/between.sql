SELECT title,
       released_year
FROM   books
WHERE  released_year >= 2004 && released_year <= 2015;

SELECT title,
       released_year
FROM   books
WHERE  released_year BETWEEN 2004 AND 2015;

SELECT title,
       released_year
FROM   books
WHERE  released_year NOT BETWEEN 2004 AND 2015;

SELECT Cast('2017-05-02' AS datetime);

SHOW DATABASES;

USE new_testing_db;

SELECT name,
       birthdt
FROM   people
WHERE  birthdt BETWEEN '1980-01-01' AND '2000-01-01';

SELECT name,
       birthdt
FROM   people
WHERE  birthdt BETWEEN Cast('1980-01-01' AS datetime) AND
                       Cast('2000-01-01' AS datetime); 