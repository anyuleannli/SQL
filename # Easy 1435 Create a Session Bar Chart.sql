# Easy 1435 Create a Session Bar Chart

with cte as (select '[0-5>' as bin
Union select '[5-10>' 
Union select '[10-15>'
Union select '15 or more')

select bin,ifnull(count(distinct session_id),0) as total
from cte
left join
(select case when duration < 5*60 then '[0-5>'
            when duration < 10*60 then '[5-10>'
            when duration < 15*60 then '[10-15>'
            else '15 or more' end as col, session_id
from Sessions) T
on cte.bin = T.col
group by bin