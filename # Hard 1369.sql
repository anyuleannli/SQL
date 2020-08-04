with cte as (select username, max(startDate) as startDate, max(endDate) as endDate
from UserActivity
group by username
having count(activity)=1)

select username, activity, startDate, endDate
from
(select username, activity, startDate, endDate, dense_rank() over(partition by username order by startDate desc) as rnk
from UserActivity
where username not in (select username from cte)) T
where rnk = 2
union
(select U.username, activity, U.startDate, U.endDate
from UserActivity U
join cte
on U.username = cte.username and U.startDate = cte.startDate)
