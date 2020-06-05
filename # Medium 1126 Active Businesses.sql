# Medium 1126 Active Businesses

select distinct E.business_id
from Events E
join
(select event_type, avg(occurences) as avg_oc
from Events
group by event_type) T
on E.event_type = T.event_type and E.occurences > avg_oc
group by E.business_id
having count(distinct E.event_type) > 1