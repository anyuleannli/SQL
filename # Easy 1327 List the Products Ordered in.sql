# Easy 1327 List the Products Ordered in a Period

select product_name, unit
from
(select product_name, sum(unit) as unit
from Products P
join Orders O
on P.product_id = O.product_id
where order_date between '2020-02-01' and '2020-02-29'
group by product_name) T
where unit >=100