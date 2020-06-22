select distinct Name
from Employee 
where Id in
(select ManagerId
from Employee
where ManagerId is not null
group by ManagerId
having count(distinct ID) >=5)