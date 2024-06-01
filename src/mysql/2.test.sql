SELECT @@sql_mode;

insert into employees (employee_id, first_name, last_name, email, hire_date, salary)
VALUES (1, 'don', 'lee', 'abc@a.com', now(), 1000000);

select * from employees where last_name = 'lee';

SET sql_mode = 'ANSI_QUOTES,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION,PIPE_AS_CONCAT';
SET sql_mode = 'ANSI_QUOTES,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

delete from employees where employee_id = '2';
select * from employees;

insert into employees (employee_id, first_name, last_name, email, hire_date, salary)
VALUES (2, 'han', 'lee', 'abc@a.com', now(), 2000000);

select last_name, sum(salary)
from employees group by last_name;

select concat('hello ', 'world') from dual;
