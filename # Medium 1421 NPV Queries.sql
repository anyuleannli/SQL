# Medium 1421 NPV Queries

select Q.id, Q.year, ifnull(N.npv,0) as npv
from Queries Q
left join NPV N
on Q.id = N.id and Q.year = N.year