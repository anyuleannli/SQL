# Medium 550

select round(ifnull(count(distinct A.player_id)/count(distinct T.player_id),0),2) as fraction
from
(select player_id, min(event_date) as first_login
from Activity
group by player_id) T
left join Activity A
on T.player_id = A.player_id and datediff(first_login, event_date)=-1