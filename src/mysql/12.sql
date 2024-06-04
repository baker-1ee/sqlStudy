-- 내장 함수
select * from employees;
-- ifnull
select ifnull(salary, 0) from employees;
-- if
select if(salary is not null, salary * 1.1, base_amount) from employees;

alter table employees add base_amount decimal(10, 2);

-- now, sysdate
select now(), sleep(2), now() from dual;
select sysdate(), sleep(2), sysdate(), now() from dual;

-- date_format
select date_format(now(), '%Y-%m-%d') from dual;
select date_format(now(), '%Y-%m-%d %H:%i:%s') from dual;
-- str_to_date
select str_to_date('2024-06-04', '%Y-%m-%d') from dual;
select str_to_date('2024-06-04 15:00:00', '%Y-%m-%d %H:%i:%s') from dual;