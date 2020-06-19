# Easy 1084

select distinct P.product_id, P.product_name
from Product P
left join Sales S
on P.product_id = S.product_id
where P.product_id not in
(select product_id
from Sales where sale_date >'2019-03-31' or sale_date <'2019-01-01') and (sale_date between '2019-01-01' and '2019-03-31')
order by P.product_id