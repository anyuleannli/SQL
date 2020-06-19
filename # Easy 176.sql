# Easy 176

select max(Salary) as SecondHighestSalary
from Employee
where Salary <>
(select max(Salary) as max_Salary
from Employee)