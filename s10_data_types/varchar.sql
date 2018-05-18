/* Demonstration of memory efficiency between VARCHAR and CHAR */

CREATE TABLE dogs (
  name char(5),
  breed varchar(10)
);

INSERT INTO dogs (name, breed)
  VALUES ('bob', 'beagle');

INSERT INTO dogs (name, breed)
  VALUES ('robby', 'corgi');

INSERT INTO dogs (name, breed)
  VALUES ('Princess Jane', 'Retriever');

SELECT
  *
FROM dogs;

INSERT INTO dogs (name, breed)
  VALUES ('Princess Jane', 'Retrievesadfdsafdasfsafr');

SELECT
  *
FROM dogs;