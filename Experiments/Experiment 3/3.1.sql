/* Write a query to count the number of students across departments who has scored more than 80 marks.*/

SELECT department,
count(CASE WHEN marks > 80 THEN 1 END) as Dept_HighScore_Count 
    From student
    Group by Department;