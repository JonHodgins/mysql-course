/* Section 10: Data Types Exercises */

/* What's a good use case for CHAR? */
/* 
 * Answer: CHAR conserves memory over VARCHAR if there is a fixed
 *         character length. Ex: Holding M/F biological sex values    
*/

/* Fill in the blanks (table) */
CREATE TABLE inventory
  (
     item_name VARCHAR(100),
     price     DECIMAL(8, 2),
     quantity  INT
  ); 

/* What's the difference between DATETIME and TIMESTAMP? */
/*
 * Answer: TIMESTAMP stores the date and time that and entry was
 *         created or modified. DATETIME can be set in the past or
 *         future. TIMESTAMP consumes 50% as much memory as DATETIME. 
*/

/* Print out the current time */
SELECT Curtime();

/* Print out the current date (but not the time) */
SELECT Curdate();

/* Print out the current day of the week (the number) */
SELECT Date_format(Curdate(), '%w');

/* Print out the current day of the week (the day name) */
SELECT Date_format(Curdate(), '%W');

/* Print out the current day and time using this format: mm/dd/yyyy */
SELECT Date_format(Curdate(), '%m/%d/%Y');

/* Print out the current day and time using this format: 
 * January 2nd at 3:15
 * April 1st at 10:18
*/
SELECT Date_format(Now(), '%M %D at %h:%i');

/* Create a tweets table that stores: 
 * The Tweet content
 * A Username
 * The time it was create
*/
CREATE TABLE tweets
  (
     content    VARCHAR(140),
     username   VARCHAR(20),
     created_at TIMESTAMP DEFAULT Now()
  ); 