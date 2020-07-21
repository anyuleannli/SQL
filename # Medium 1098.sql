# Medium 1098
select book_id, name
from Books
where book_id not in
(select book_id
from Orders
where datediff('2019-06-23',dispatch_date)<=365 and datediff('2019-06-23',dispatch_date)>0
group by book_id
having sum(quantity) >= 10) and datediff('2019-06-23',available_from)>=30