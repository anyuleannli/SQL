# Easy 1083

select distinct buyer_id
from Sales S
join Product P
on S.product_id = P.product_id
where product_name = 'S8'
and buyer_id not in
(select buyer_id
from Sales S
join Product P
on S.product_id = P.product_id
where product_name = 'iPhone')