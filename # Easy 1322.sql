# Easy 1322

select ad_id, round(ifnull(total_clicks*100/(total_clicks+total_views),0),2) as ctr
from
(select ad_id, sum(case when action = 'Clicked' then 1 else 0 end) total_clicks,
sum(case when action = 'Viewed' then 1 else 0 end) as total_views
from Ads
group by ad_id) T
order by 2 desc, ad_id
