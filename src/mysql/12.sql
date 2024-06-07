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
SELECT DATE_FORMAT(NOW(), '%Y-%m-%d') FROM dual;
SELECT DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s') FROM dual;
-- str_to_date
SELECT STR_TO_DATE('2024-06-04', '%Y-%m-%d') FROM dual;
SELECT STR_TO_DATE('2024-06-04 15:00:00', '%Y-%m-%d %H:%i:%s') FROM dual;

-- 날짜와 시간의 연산
-- 날짜 더하기
SELECT DATE_ADD(NOW(), INTERVAL 1 YEAR) AS next_year FROM dual;
SELECT DATE_ADD(NOW(), INTERVAL 1 MONTH) AS next_month FROM dual;
SELECT DATE_ADD(NOW(), INTERVAL 1 DAY) AS tomorrow FROM dual;
SELECT DATE_ADD(NOW(), INTERVAL 1 HOUR) AS next_hour FROM dual;
SELECT DATE_ADD(NOW(), INTERVAL 1 MINUTE) AS next_minute FROM dual;
SELECT DATE_ADD(NOW(), INTERVAL 1 SECOND) AS next_second FROM dual;
SELECT DATE_ADD(NOW(), INTERVAL 1 MICROSECOND) AS next_microsecond FROM dual;
SELECT DATE_ADD(NOW(), INTERVAL 1 QUARTER) AS next_quarter FROM dual;
SELECT DATE_ADD(NOW(), INTERVAL 1 WEEK) AS next_week FROM dual;
-- 날짜 빼기
SELECT DATE_ADD(NOW(), INTERVAL -1 YEAR) AS last_year FROM dual;
SELECT DATE_ADD(NOW(), INTERVAL -1 MONTH) AS last_month FROM dual;
SELECT DATE_ADD(NOW(), INTERVAL -1 DAY) AS yesterday FROM dual;
SELECT DATE_ADD(NOW(), INTERVAL -1 HOUR) AS last_hour FROM dual;
SELECT DATE_ADD(NOW(), INTERVAL -1 MINUTE) AS last_minute FROM dual;
SELECT DATE_ADD(NOW(), INTERVAL -1 SECOND) AS last_second FROM dual;
SELECT DATE_ADD(NOW(), INTERVAL -1 MICROSECOND) AS last_microsecond FROM dual;
SELECT DATE_ADD(NOW(), INTERVAL -1 QUARTER) AS last_quarter FROM dual;
SELECT DATE_ADD(NOW(), INTERVAL -1 WEEK) AS last_week FROM dual;

select unix_timestamp() from dual;
select unix_timestamp('2024-06-05 18:00:00') from dual;
select from_unixtime(unix_timestamp('2024-06-05 18:00:00')) from dual;
-- 2038
select unix_timestamp('2038-01-19 03:14:08') from dual;
select from_unixtime(unix_timestamp('2038-01-19 03:14:08')) from dual;
select from_unixtime(1717577431.999999999999999999999999999998) from dual;