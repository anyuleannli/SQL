# Medium 1204 Last Person to Fit in the Elevator

select top 1 person_name
from
(select person_name, sum(weight) over (order by turn) as cumsum
from Queue) T
where cumsum <=1000
order by cumsum desc