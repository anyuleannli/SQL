# Medium 1270 All People Report to the Given Manager

select E1.employee_id
from Employees E1
left join Employees E2
on E1.manager_id = E2.employee_id
left join Employees E3
on E2.manager_id = E3.employee_id
where (E1.manager_id =1 or E2.manager_id = 1 or E3.manager_id = 1) and E1.employee_id <> 1