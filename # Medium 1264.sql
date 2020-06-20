# Medium 1264

select distinct page_id as recommended_page
from Likes
where page_id in
(select page_id
from Likes L
join Friendship F
on L.user_id = user2_id
where user1_id = 1
Union 
select page_id
from Likes L
join Friendship F
on L.user_id = user1_id
where user2_id = 1) and page_id not in (select page_id from Likes where user_id =1)