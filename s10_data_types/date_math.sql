SELECT *
FROM   people;

SELECT Datediff(Now(), birthdate)
FROM   people;

SELECT name,
       birthdate,
       Datediff(Now(), birthdate)
FROM   people;

SELECT birthdt
FROM   people;

SELECT birthdt,
       Date_add(birthdt, INTERVAL 1 month)
FROM   people;

SELECT birthdt,
       Date_add(birthdt, INTERVAL 10 second)
FROM   people;

SELECT birthdt,
       Date_add(birthdt, INTERVAL 3 quarter)
FROM   people;

SELECT birthdt,
       birthdt + INTERVAL 1 month
FROM   people;

SELECT birthdt,
       birthdt - INTERVAL 5 month
FROM   people;

SELECT birthdt,
       birthdt + INTERVAL 15 month + INTERVAL 10 hour
FROM   people; 