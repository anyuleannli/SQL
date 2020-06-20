# Medium 1193

select date_format(trans_date, '%Y-%m') as month, country, ifnull(count(*),0) as trans_count, sum(case when state = 'approved' then 1 else 0 end) as approved_count, ifnull(sum(amount),0) as trans_total_amount, sum(case when state = 'approved' then amount else 0 end) as approved_total_amount
from Transactions
group by 1,2