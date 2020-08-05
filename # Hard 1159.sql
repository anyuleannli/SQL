with cte as (select user_id, case when count(order_id) = 1 then 'no' else 'no' end as result
from Users U
left join Orders O
on U.user_id = O.seller_id
group by user_id
having count(order_id) <2)


select T.seller_id, '2nd_item_fav_brand' = (case when U.favorite_brand = I.item_brand then 'yes' else 'no' end) 
from
(select seller_id, item_id, row_number() over(partition by seller_id order by order_date) as num
from Orders
where seller_id not in (select user_id from cte)) T
left join Items I
on T.item_id = I.item_id
left join Users U
on U.user_id = T.seller_id
where num =2
Union all
select user_id, result
from cte
order by 1

