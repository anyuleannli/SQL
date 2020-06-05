# Easy 1303 Find the Team Size

select employee_id, team_size
from
(select team_id, count(distinct employee_id) as team_size
from Employee
group by team_id) T
join Employee E
on T.team_id = E.team_id