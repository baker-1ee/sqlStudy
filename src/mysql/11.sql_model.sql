SELECT @@sql_mode;
SET sql_mode = 'ANSI,TRADITIONAL';

insert into employees (employee_id, first_name, last_name, gubun, email, hire_date, salary)
VALUES (1, 'don', 'lee', '01  ', 'abc@a.com', now(), 1000000);

select * from employees;
select * from employees where last_name = 'lee';
select * from employees where last_name = "lee";

select * from employees where HIRE_DATE = '2020-01-01';
select * from employees where HIRE_DATE = str_to_date('2020-01-01', '%Y-%m-%d');

SELECT 10/3 FROM dual;
SELECT 10 div 3 FROM dual;
SELECT 10 mod 3 FROM dual;
