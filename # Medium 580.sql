# Medium 580

select d.dept_name, ifnull(count(distinct student_id),0) as student_number
from department d
left join student s
on d.dept_id = s.dept_id
group by dept_name
order by student_number desc, dept_name