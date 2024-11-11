CREATE DATABASE university;
USE university;

CREATE TABLE student(
 rollno INT PRIMARY KEY,
 name VARCHAR(50),
 marks INT NOT NULL,
 grade VARCHAR(1),
 city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(1, "Rafi Zaman Saukhin", 91, "A", "Dhaka"),
(2, "Nafisa Amrin Purnata", 91, "A", "Dhaka"),
(3, "Person3", 80, "B", "Sylhet"),
(4, "Person4", 79, "C", "Rajshahi"),
(5, "Person5", 90, "A", "Chittagong"); 

SELECT * FROM student;
SELECT name, marks FROM student;
SELECT DISTINCT city FROM student;

SELECT * FROM student WHERE marks > 80;
SELECT * FROM student WHERE city = "Dhaka";

