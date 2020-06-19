# Easy 1142

select round(ifnull(sum(num)/count(user_id),0),2) as average_sessions_per_user
from
(select user_id, count(distinct session_id) as num
from Activity
where datediff('2019-07-27', activity_date) < 30
group by user_id) T