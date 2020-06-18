# Easy 603 Consecutive Available Seats

select C1.seat_id
from cinema C1
left join cinema C2
on C1.seat_id +1 = C2.seat_id
left join cinema C3
on C1.seat_id = C3.seat_id +1
where C1.free = 1 and (C2.free =1 or C3.free =1)
order by C1.seat_id