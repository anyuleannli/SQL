# Medium 602

select id, count(distinct accepter_id) as num
from
(select requester_id as id, accepter_id
from request_accepted
Union all
select accepter_id, requester_id
from request_accepted) T
group by id
order by num desc
limit 1