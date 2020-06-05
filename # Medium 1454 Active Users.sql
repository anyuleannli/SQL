# Medium 1454 Active Users

select distinct L1.id, A.name
from Logins L1
join Accounts A
on L1.id = A.id
left join Logins L2
on L1.id = L2.id and datediff(L1.login_date,L2.login_date) between 1 and 4
group by L1.id,A.name,L1.login_date
having count(distinct L2.login_date)=4
order by 1