-- We have a student table that also stores the Course_id of a student's favorite course. Our task has two parts related to using a SELF JOIN:

--     Find pairs of students that belong to the same department.
--     Identify students who have chosen the same Course_id as their favorite. Display the St_id, St_Name, and Course_id and order it in increasing Course_id.


select s1.St_id, s1.St_Name, s1.department, s2.St_id, s2.St_Name,s2.department
from student as s1
join student as s2
on s1.department = s2.department and s1.St_Name != s2.St_Name;

select St_id, St_Name, Course_id
from student
where Course_id in (
    select Course_id
    from student
    group by Course_id
    having count(*)>1
    )
order by Course_id;