
CREATE DATABASE XYZ;

CREATE TABLE employee(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

INSERT INTO employee
(id, name, salary)
VALUES
(1, "Zaman", 20000),
(2, "Trek", 30000),
(3, "Zamanxs", 50000);

SELECT * FROM employee;

