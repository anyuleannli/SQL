select S1.id, T.student
from seat S1
left join
(select id, student, case when id = (select max(id) from seat) and mod(id,2)<>0 then id
 when mod(id,2)<>0 then id+1 else id-1 end as new_id
from seat) T
on S1.id = T.new_id