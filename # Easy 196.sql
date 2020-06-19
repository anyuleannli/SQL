# Easy 196

DELETE from Person where id not in (
select * from (select min(id) from Person group by Email) T)