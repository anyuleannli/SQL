# Medium 1364 Number of Trusted Contacts of a Customer

select I.invoice_id, Cu.customer_name, I.price, ifnull(count(distinct Co.contact_name),0) as contacts_cnt, ifnull(sum(case when Co.contact_email in (select email from Customers) then 1 else 0 end),0) as trusted_contacts_cnt
from Invoices I
join Customers Cu
on I.user_id = Cu.customer_id
left join Contacts Co
on I.user_id = Co.user_id
group by 1,2,3
order by 1