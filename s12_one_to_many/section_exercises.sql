/* Section 12: One to Many Exercises */

/* Write this schema: Students(id, first_name), Papers(title, grade, student_id) */

CREATE DATABASE student_db;

CREATE TABLE students 
  ( 
    id         INT auto_increment PRIMARY KEY, 
    first_name VARCHAR(30) 
  ); 

CREATE TABLE papers 
  ( 
    title      VARCHAR(100), 
    grade      INT, 
    student_id INT, 
    FOREIGN KEY(student_id) REFERENCES students(id) 
  ); 
  
INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

/* Print table showing first_name, title, grade */

SELECT first_name, 
       title, 
       grade 
FROM   students 
       JOIN papers 
         ON students.id = papers.student_id 
ORDER  BY grade DESC;

/* Print table showing all students including those who handed nothing in */

SELECT first_name, 
       title, 
       grade 
FROM   students 
       LEFT JOIN papers 
         ON students.id = papers.student_id;
         
/* Similar to last table, but set NULL grade to 0, and NULL title to 'MISSING' */

SELECT first_name, 
       Ifnull(title, 'MISSING') AS title, 
       Ifnull(grade, 0)         AS grade
FROM   students 
       LEFT JOIN papers 
              ON students.id = papers.student_id; 
         
/* Print table showing first_name and average grade */

SELECT first_name, 
       Avg(Ifnull(grade, 0)) AS average
FROM   students 
       LEFT JOIN papers 
              ON students.id = papers.student_id 
GROUP  BY students.id 
ORDER  BY average DESC; 

/* Create Pass/Fail column using the previous table */

SELECT first_name, 
       Round(Avg(Ifnull(grade, 0)), 1) AS average, 
       CASE 
         WHEN Avg(grade) >= 75 THEN 'PASSING' 
         ELSE 'FAILING' 
       END                             AS passing_status 
FROM   students 
       LEFT JOIN papers 
              ON students.id = papers.student_id 
GROUP  BY students.id 
ORDER  BY average DESC; 
