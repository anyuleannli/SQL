# Easy 1068 Product Sales Analysis I

select product_name, year,price
from Product P
right join Sales S
on P.product_id = S.product_id