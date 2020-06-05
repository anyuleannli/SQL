# Medium 1112 Highest Grade For Each Student

select T.student_id, min(course_id) as course_id,highest as grade
from
(select student_id,max(grade) as highest
from Enrollments E
group by 1) T
join Enrollments E
on T.student_id = E.student_id and T.highest = E.grade
group by 1
order by 1