# Easy 1378 Replace Employee ID With The Unique Identifier

select unique_id, name
from EmployeeUNI U
right join Employees E
on U.id = E.id