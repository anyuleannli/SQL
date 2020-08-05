select name as customer_name,T.customer_id, order_id, order_date
from
(select customer_id, order_id, order_date,row_number() over (partition by customer_id order by order_date desc) as recent
from Orders) T
left join Customers C
on T.customer_id = C.customer_id
where recent <= 3
order by name asc, T.customer_id asc, order_date desc