# Easy 1050 Actors and Directors Who cooperated At Least Three Times

select distinct actor_id, director_id
from ActorDirector
group by actor_id, director_id
having count(*)>=3