# Easy 577 Employee Bonus 


select name, bonus 
from Employee E
left join Bonus B
on E.empId = B.empId
where bonus is null or bonus <1000