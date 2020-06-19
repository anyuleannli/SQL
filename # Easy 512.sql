# Easy 512

select player_id,device_id
from Activity
where (player_id,event_date) in
(select player_id, min(event_date) as earliest
from Activity group by player_id)