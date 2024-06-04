-- 내장 함수
select * from EMPLOYEES;
-- nvl
select nvl(SALARY, 0) from EMPLOYEES;
-- nvl2
select nvl2(SALARY, SALARY * 1.1, BASE_AMOUNT) from EMPLOYEES;

alter table EMPLOYEES add BASE_AMOUNT NUMBER;

-- sysdate
select  sysdate, sysdate, systimestamp, systimestamp from dual;


-- date
select to_char(sysdate, 'YYYY-MM-DD') from dual;