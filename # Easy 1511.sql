select customer_id, name
from Customers 
where customer_id in

(select customer_id from
(select customer_id, date_format(order_date, '%Y-%m')as ym,sum(price*quantity) as sales
from Orders O
join Product P
on O.product_id = P.product_id
where date_format(order_date,'%Y-%m') in ('2020-06','2020-07')
group by 1,2
having sales >= 100) T
group by 1
having count(*) >1)