SELECT RPAD('Hello', 10, 'x') AS padded_string;
-- Helloxxxxx
SELECT RPAD('안녕하세요', 10, 'x') AS padded_string;
-- 안녕하세요xxxxx
SELECT RPAD('안녕하세요', 10, 'hi') AS padded_string;
-- 안녕하세요hihih

SELECT LPAD('Hello', 10, 'x') AS padded_string;
-- xxxxxHello
SELECT LPAD('안녕하세요', 10, 'x') AS padded_string;
-- xxxxx안녕하세요
SELECT LPAD('안녕하세요', 10, 'hi') AS padded_string;
-- hihih안녕하세요

SELECT RTRIM('Hello    ') AS trimmed_string;
-- Hello
SELECT LTRIM('    Hello') AS trimmed_string;
-- Hello

SELECT TRIM('  Hello  ') AS trimmed_string;
-- Hello
SELECT TRIM('x' FROM 'xxxHelloxxx') AS trimmed_string;
-- Hello

SELECT TRIM(LEADING 'x' FROM 'xxxHello') AS trimmed_string;
-- Hello

SELECT TRIM(TRAILING 'x' FROM 'Helloxxx') AS trimmed_string;
-- Hello

-- 문자열의 바이트 길이 측정
SELECT LENGTH('안녕하세요') AS byte_length;
-- 결과: 15 (UTF-8에서 한글 한 글자는 3바이트)

-- 문자열의 문자 길이 측정
SELECT CHAR_LENGTH('안녕하세요') AS char_length;
-- 결과: 5 (문자 수)

-- 서버의 기본 캐릭터셋
SHOW VARIABLES LIKE 'character_set_server';
-- utf8mb4


select concat('Hello', 'World');
-- HelloWorld
select concat('Hello', 'World', '2');
-- HelloWorld2

SELECT CAST('123' AS SIGNED) AS number_value;
SELECT CAST(123 AS char ) AS string_value;
