# Easy 613 Shortest Distance in a Line

select min((P1.x-P2.x))as shortest
from point P1
left join point P2
on P1.x > P2.x