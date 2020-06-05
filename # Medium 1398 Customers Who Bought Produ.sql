# Medium 1398 Customers Who Bought Products A and B but Not C


select T1.customer_id, C.customer_name
from
(select customer_id
from Orders 
where product_name = 'A') T1
join
(select customer_id
from Orders 
where product_name = 'B') T2
on T1.customer_id = T2.customer_id
join Customers C
on T1.customer_id = C.customer_id
where T1.customer_id not in (select customer_id from Orders where product_name = 'C')
order by T1.customer_id