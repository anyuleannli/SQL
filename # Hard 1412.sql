with cte as (select exam_id, min(score) as low, max(score) as high
from Exam
group by exam_id)
select distinct S.student_id, S.student_name
from Student S
join Exam E
on s.student_id = E.student_id
where S.student_id not in
(select E.student_id
from Exam E
join Student S
on E.student_id = S.student_id
join cte 
on E.exam_id = cte.exam_id
where score = low or score = high)
order by S.student_id