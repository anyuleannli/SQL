with cte as (select product_id, max(change_date) as latest
            from Products
            where change_date < '2019-08-17'
            group by product_id)

select P.product_id, P.new_price as price
from Products P
join cte
on P.change_date = cte.latest and P.product_id = cte.product_id
Union
select product_id, 10
from Products 
where product_id not in (select product_id from cte)