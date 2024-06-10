SELECT RPAD('Hello', 10, 'x') AS padded_string FROM dual;
-- Helloxxxxx
SELECT RPAD('안녕하세요', 11, 'x') AS padded_string FROM dual;
-- 안녕하세요x
SELECT RPAD('안녕하세요', 11, 'hi') AS padded_string FROM dual;
-- 안녕하세요h

SELECT LPAD('Hello', 10, 'x') AS padded_string FROM dual;
-- xxxxxHello
SELECT LPAD('안녕하세요', 11, 'x') AS padded_string FROM dual;
-- x안녕하세요
SELECT LPAD('안녕하세요', 11, 'hi') AS padded_string FROM dual;
-- h안녕하세요

SELECT RTRIM('Hello    ') AS trimmed_string FROM dual;
-- Hello
SELECT LTRIM('    Hello') AS trimmed_string FROM dual;
-- Hello
SELECT TRIM('  Hello  ') AS trimmed_string FROM dual;
-- Hello
SELECT TRIM('x' FROM 'xxxHelloxxx') AS trimmed_string FROM dual;
-- Hello
SELECT TRIM(LEADING 'x' FROM 'xxxHello') AS trimmed_string FROM dual;
-- Hello
SELECT TRIM(TRAILING 'x' FROM 'Helloxxx') AS trimmed_string FROM dual;
-- Hello

SELECT parameter, value FROM nls_database_parameters WHERE parameter = 'NLS_CHARACTERSET';
SELECT userenv('language') FROM dual;

select concat('Hello', 'World') from dual;
-- HelloWorld
select 'Hello' || 'World' || '2' from dual;
-- HelloWorld2

SELECT CAST('123' AS NUMBER) AS number_value FROM dual;
SELECT CAST(123 AS VARCHAR2(10)) AS string_value FROM dual;
SELECT TO_CHAR(123) AS string_value FROM dual;
SELECT TO_DATE('2024-06-04', 'YYYY-MM-DD') AS date_value FROM dual;
SELECT TO_NUMBER('123') AS number_value FROM dual;
