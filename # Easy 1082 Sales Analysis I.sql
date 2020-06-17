# Easy 1082 Sales Analysis I

select seller_id from Sales
group by seller_id
having sum(price) =
(select sum(price) as total
from Sales
group by seller_id
order by 1 desc
limit 1)