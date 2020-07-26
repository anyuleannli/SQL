select round(avg(percent),2) as average_daily_percent from
(select distinct action_date, count(distinct R.post_id)*100/count(distinct A.post_id) as percent
from Actions A
left join Removals R
on A.post_id = R.post_id
where extra = 'spam'
group by action_date) T