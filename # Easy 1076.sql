# Easy 1076

select project_id
from Project
group by project_id
having count(distinct employee_id) = 
(select count(distinct employee_id) as num
from Project
group by project_id
order by 1 desc
limit 1)