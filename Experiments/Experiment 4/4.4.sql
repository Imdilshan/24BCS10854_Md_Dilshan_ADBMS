SELECT *
FROM student as s
FULL OUTER JOIN course as c
on 
s.Course_id = c.Course_id;
