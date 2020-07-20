# Medium 1501

select C.name as country
from Country C
join Person P
on C.country_code = left(P.phone_number,3)
left join Calls CA
on CA.caller_id = P.id or CA.callee_id = P.id
group by C.name
having avg(duration) >
(select avg(duration) as global_average
from Calls)