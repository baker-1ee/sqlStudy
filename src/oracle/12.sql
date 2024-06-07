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
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD') FROM dual;
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') FROM dual;

SELECT TO_DATE('2024-06-04', 'YYYY-MM-DD') FROM dual;
SELECT TO_DATE('2024-06-04 15:00:00', 'YYYY-MM-DD HH24:MI:SS') FROM dual;

-- 날짜와 시간의 연산
SELECT SYSDATE + 1 AS tomorrow FROM dual;
SELECT ADD_MONTHS(SYSDATE, 1) AS next_month FROM dual;
SELECT SYSDATE - 1 AS yesterday FROM dual;
SELECT ADD_MONTHS(SYSDATE, -12) AS last_year FROM dual;
SELECT TO_DATE('2024-06-04', 'YYYY-MM-DD') + 7 AS one_week_later FROM dual;
SELECT ADD_MONTHS(TO_DATE('2024-06-04', 'YYYY-MM-DD'), -2) AS two_months_earlier FROM dual;

SELECT (SYSDATE - TO_DATE('1970-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS')) * 86400 AS current_timestamp FROM dual;
select current_timestamp from dual;