select visited_on, amount, round(amount/7.0,2) as average_amount
from
(select visited_on, sum(total) over (order by visited_on rows 6 preceding) as amount
from
(select visited_on, sum(amount) as total
from Customer 
group by visited_on) T1) T2
where datediff(day,(select min(visited_on) from Customer),visited_on)>=6