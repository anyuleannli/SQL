# Easy 1527

select distinct patient_id, patient_name, conditions
from Patients
where conditions like '%DIAB1%'