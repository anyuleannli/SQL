select item_category as CATEGORY, sum(case when weekday(order_date)=0 then quantity else 0 end) MONDAY, 
sum(case when weekday(order_date)=1 then quantity else 0 end) TUESDAY,
sum(case when weekday(order_date)=2 then quantity else 0 end) WEDNESDAY, 
sum(case when weekday(order_date)=3 then quantity else 0 end) THURSDAY,
sum(case when weekday(order_date)=4 then quantity else 0 end) FRIDAY,
sum(case when weekday(order_date)=5 then quantity else 0 end) SATURDAY,
sum(case when weekday(order_date)=6 then quantity else 0 end) SUNDAY
from Items I
left join Orders O
on I.item_id = O.item_id
group by item_category
order by item_category