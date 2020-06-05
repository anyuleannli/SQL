# Medium 1077 Project Employees III

select P.project_id, P.employee_id
from Project P
join Employee E
on P.employee_id = E.employee_id
where (P.project_id, E.experience_years) in 
(select P.project_id, max(E.experience_years) as longest
from Project P
join Employee E
on P.employee_id = E.employee_id
group by P.project_id)