select*
from parks_and_recreation.employee_demographics;
#List of Company Member

select first_name,
last_name,
age,
(age+10) *10 + 10 / 10
from parks_and_recreation.employee_demographics;

select distinct first_name, gender
from parks_and_recreation.employee_demographics;
