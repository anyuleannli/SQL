# Easy 1173 Immediate Food Delivery I

select round(sum(case when order_date = customer_pref_delivery_date then 1 else 0 end)*100/count(distinct delivery_id),2) as immediate_percentage
from Delivery