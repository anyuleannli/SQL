# Medium 1355

with cte as (select activity, count(distinct id) as num
from Friends
group by activity)
select activity
from Friends
group by activity
having count(distinct id) not in 
(select min(num) 
from cte
union
select max(num) 
from cte)