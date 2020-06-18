# Easy 1075 Project Employees I

select project_id, round(avg(experience_years),2) as average_years
from Project P
left join Employee E
on P.employee_id = E.employee_id
group by project_id