# Easy 1241 Number of Commmets Per Post

select distinct T.sub_id as post_id, ifnull(count(distinct S1.sub_id),0) as number_of_comments
from Submissions S1
right join
(select sub_id from Submissions where parent_id is null ) T
on S1.parent_id = T.sub_id
group by T.sub_id
order by T.sub_id