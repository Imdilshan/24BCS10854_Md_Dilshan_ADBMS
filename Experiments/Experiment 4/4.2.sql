/* Write a query to do the following:
 - JOIN the tables 'student' and 'course' using 'Course_id' to match both the tables and output the joined table.
 - LEFT JOIN the tables 'student' and 'course' using 'Course_id' to match both the tables and output the joined table. */
 
SELECT * 
FROM 
student as s
JOIN 
course as c
on s.Course_id = c.Course_id;

SELECT * 
FROM 
student as s
Left JOIN 
course as c
on s.Course_id = c.Course_id;

 