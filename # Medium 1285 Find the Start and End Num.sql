# Medium 1285 Find the Start and End Number of Continuous Ranges

select start_id, min(end_id) as end_id
from
(select L1.log_id as start_id
from Logs L1
left join Logs L2
on L1.log_id=L2.log_id+1
where L2.log_id is null) T1
left join
(select L3.log_id as end_id
from Logs L3
left join Logs L4
on L3.log_id+1 = L4.log_id
where L4.log_id is null) T2
on T1.start_id <= T2.end_id
group by start_id