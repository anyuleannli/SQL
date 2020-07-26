select distinct T.activity_date as login_date, count(distinct T.user_id) as user_count
from Traffic T
where datediff('2019-06-30', activity_date) <= 90 and (user_id, activity_date) in 
(select user_id, min(activity_date) as first_time
from Traffic
where activity = 'login'
group by user_id) and T.activity = 'login' 
group by T.activity_date