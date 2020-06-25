with cte as (select customer_id, min(order_date) as first_date
from Delivery
group by customer_id) 

select round(sum(case when order_date = customer_pref_delivery_date then 1 else 0 end) *100/count(*),2) as immediate_percentage
from Delivery D
join cte 
on D.customer_id = cte.customer_id and D.order_date = cte.first_date