# Medium 578
select question_id as survey_log from
(select question_id, ifnull(sum(case when action = 'answer' then 1 else 0 end)/sum(case when action = 'show' then 1 else 0 end),0) as answer_rate
from survey_log
group by question_id
order by 2 desc
limit 1) T