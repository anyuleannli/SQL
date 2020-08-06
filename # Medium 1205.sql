select * from
(select date_format(trans_date,"%Y-%m") as month, country, sum(case when state = "approved" then 1 else 0 end) as approved_count, sum(case when state = "approved" then amount else 0 end) as approved_amount, sum(case when state = "chargeback" then 1 else 0 end) as chargeback_count, sum(case when state = "chargeback" then amount else 0 end) as chargeback_amount
from
(select *
from Transactions
Union
select trans_id, country, "chargeback",amount,C.trans_date
from Chargebacks C
join Transactions T
on C.trans_id = T.id) T
group by 1,2) T2
where approved_count>0 or chargeback_count >0