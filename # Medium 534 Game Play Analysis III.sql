# Medium 534 Game Play Analysis III

select A1.player_id, A1.event_date, coalesce(sum(A2.games_played),0) as games_played_so_far
from Activity A1
join Activity A2
on A1.event_date >= A2.event_date and A1.player_id = A2.player_id
group by A1.player_id, A1.event_date
order by A1.player_id, A1.event_date