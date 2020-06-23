
(select U.name as results
from Users U
join Movie_Rating R
on U.user_id = R.user_id
group by U.user_id
order by count(distinct movie_id) desc, U.name asc
limit 1)
Union
(select M.title
from Movies M
join Movie_Rating R
on M.movie_id = R.movie_id
where R.created_at between '2020-02-01' and '2020-02-29'
group by R.movie_id
order by avg(rating) desc, M.title asc
limit 1)