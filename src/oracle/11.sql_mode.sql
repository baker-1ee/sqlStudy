


insert into EMPLOYEES (FIRST_NAME, LAST_NAME, GUBUN, EMAIL, HIRE_DATE, SALARY)
values ('don', 'lee', '01  ', 'abc@a.com', sysdate, 1000000);

select * from EMPLOYEES;
select * from EMPLOYEES where last_name = 'lee';
select * from EMPLOYEES where last_name = "lee";

select * from employees where HIRE_DATE = '2020-01-01';

SELECT 10/3 FROM dual;
SELECT floor(10 / 3) FROM dual;
