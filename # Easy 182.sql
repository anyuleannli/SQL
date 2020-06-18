# Easy 182

select distinct Email
from Person
group by Email
having count(*)>1