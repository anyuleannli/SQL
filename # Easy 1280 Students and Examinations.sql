# Easy 1280 Students and Examinations

select Stu.student_id, Stu.student_name, Sub.subject_name, sum(case when Sub.subject_name = E.subject_name then 1 else 0 end) attended_exams
from Students Stu
cross join Subjects Sub
left join Examinations E
on Stu.student_id = E.student_id
group by 1,2,3
order by 1,3