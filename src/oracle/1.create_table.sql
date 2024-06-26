drop table employees;

CREATE TABLE employees (
                           employee_id NUMBER GENERATED BY DEFAULT AS IDENTITY,
                           first_name VARCHAR2(50),
                           last_name VARCHAR2(50),
                           gubun CHAR(5),
                           email VARCHAR2(100),
                           hire_date DATE,
                           salary NUMBER,
                           PRIMARY KEY (employee_id)
);
