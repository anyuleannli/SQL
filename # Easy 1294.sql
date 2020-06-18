# Easy 1294

select country_name, (case when avg(weather_state) <= 15 then 'Cold'
                                  when avg(weather_state)>=25 then 'Hot'
                                  else 'Warm' end) as weather_type
from Countries C
join Weather W
on C.country_id = W.country_id
where day between '2019-11-01' and '2019-11-30'
group by country_name