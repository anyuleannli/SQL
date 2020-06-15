# Easy 1251 Average Selling Price

select distinct product_id, round(total_price/total_unit,2) as average_price
from
(select P.product_id, sum(P.price*U.units) as total_price,sum(U.units) as total_unit
from Prices P
left join UnitsSold U
on P.product_id = U.product_id and (U.purchase_date between P.start_date and P.end_date)
group by P.product_id)T