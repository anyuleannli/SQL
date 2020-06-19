# Easy 197

select distinct W1.Id
from Weather W1
join Weather W2
on datediff(W1.RecordDate,W2.RecordDate) = 1
and (W1.Temperature > W2.Temperature )