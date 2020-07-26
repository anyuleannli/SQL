select D.Name as Department, E.Name as Employee, E.Salary
from Department D
left join Employee E
on D.Id = E.DepartmentID
where (E.DepartmentID, E.Salary) in
(select DepartmentId, max(Salary) as high_salary
from Employee
group by DepartmentId)