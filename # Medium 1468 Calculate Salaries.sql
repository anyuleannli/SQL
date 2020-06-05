# Medium 1468 Calculate Salaries

select S.company_id, S.employee_id, S.employee_name,round(S.salary * (1-T.tax_rate),0) as salary
from
(select company_id, (case when max(salary) > 10000 then 0.49 
                        when max(salary) < 1000 then 0
                        else 0.24 end) as tax_rate
from Salaries
group by company_id) T #find the tax rate for each company
join Salaries S
on T.company_id = S.company_id