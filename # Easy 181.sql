# Easy 181

select E1.Name as Employee
from Employee E1
left join Employee E2
on E1.ManagerId = E2.Id
where E1.Salary > E2.Salary