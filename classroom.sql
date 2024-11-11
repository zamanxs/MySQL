CREATE DATABASE College;

USE College;

CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student
(rollno, name)
VALUES
(101, "Saukhin"),
(102, "Purnata");

INSERT INTO student VALUES(103, "Oishi");

SELECT * FROM student;

CREATE TABLE Temp1 (
     id INT UNIQUE
);

INSERT INTO Temp1 VALUES (101);
INSERT INTO Temp1 VALUES (102);

SELECT * FROM Temp1;

CREATE TABLE temp2 (
  id INT ,
  name VARCHAR(50),
  age INT,
  city VARCHAR(50),
  PRIMARY KEY(id)
);

CREATE TABLE temp3 (
 id INT,
 FOREIGN KEY (id) references temp2(id)
);

CREATE TABLE emp (
  id INT,
  salary INT DEFAULT 25000
);

INSERT INTO emp (id) VALUES (101);
SELECT * FROM emp;













