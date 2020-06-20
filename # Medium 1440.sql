# Medium 1440

select E.*, case when operator = '>' and V1.value > V2.value then 'true'
                when operator = '<' and V1.value < V2.value then 'true'
                when operator = '=' and V1.value = V2.value then 'true'
                else 'false' end as value
from Expressions E
left join Variables V1
on E.left_operand = V1.name
left join Variables V2
on E.right_operand = V2.name