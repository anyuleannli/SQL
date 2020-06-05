# Medium 178 Rank Scores

select Score, dense_rank() over (order by Score desc) as rank_id
from Scores