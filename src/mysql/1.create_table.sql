drop table employees;

CREATE TABLE employees (
                           employee_id INT AUTO_INCREMENT,
                           first_name VARCHAR(50),
                           last_name VARCHAR(50),
                           gubun CHAR(5),
                           email VARCHAR(100),
                           hire_date DATE,
                           salary DECIMAL(10, 2),
                           PRIMARY KEY (employee_id)
);
