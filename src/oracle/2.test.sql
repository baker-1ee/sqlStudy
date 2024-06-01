insert into EMPLOYEES (FIRST_NAME, LAST_NAME, EMAIL, HIRE_DATE, SALARY)
values ('don', 'lee', 'abc@a.com', sysdate, 1000000);

select * from employees where last_name = 'lee';

select 'hello ' || 'world' from dual;

