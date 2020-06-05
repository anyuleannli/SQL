# Easy 1350 Students With Invalid Departments

select distinct id, name
from Students 
where department_id not in (select id from Departments)