CREATE DATABASE university;
USE university;

CREATE TABLE student(
 rollno INT PRIMARY KEY,
 name VARCHAR(50),
 marks INT NOT NULL,
 grade VARCHAR(1),
 city VARCHAR(20)
);

CREATE TABLE course(
  rollno INT PRIMARY KEY,
  course VARCHAR(50)
);

INSERT INTO course
(rollno, course)
VALUES
(2, 'English'),
(3, 'CSE101'),
(5, 'EEE111');

SELECT * FROM course;

INSERT INTO student
(rollno, full_name, marks, grade, city)
VALUES
(1, "Rafi Zaman Saukhin", 91, "A", "Dhaka"),
(2, "Nafisa Amrin Purnata", 91, "A", "Dhaka"),
(3, "Person3", 80, "B", "Sylhet"),
(4, "Person4", 79, "C", "Rajshahi"),
(5, "Person5", 90, "A", "Chittagong"); 

SELECT full_name, marks 
FROM student
WHERE marks > (SELECT AVG(marks) FROM student);


CREATE TABLE employee (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  manager_id INT 
);

INSERT INTO employee
(id, name, manager_id)
VALUES
(101, 'Adam', 103),
(102, 'Bob', 104),
(103, 'Casey', NULL),
(104, 'Donand', 103);

SELECT * FROM employee;

SELECT a.name as manager_name, b.name
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;

SELECT name FROM employee
UNION ALL
SELECT name FROM employee; 


SELECT *
FROM student 
INNER JOIN course
ON student.rollno = course.rollno;


SELECT *
FROM student as s
LEFT JOIN course as c
ON s.rollno = c.rollno;


SELECT *
FROM student 
RIGHT JOIN course
ON student.rollno = course.rollno;

SELECT *
FROM student as s
LEFT JOIN course as c
ON s.rollno = c.rollno
UNION                    
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.rollno = c.rollno;


SELECT *
FROM student as s
LEFT JOIN course as c
ON s.rollno = c.rollno
WHERE c.rollno IS NULL;

SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.rollno = c.rollno
WHERE s.rollno IS NULL;

SELECT *
FROM student as s
JOIN student as s
ON s.rollno = s.rolllno;


SELECT * FROM student;
SELECT name, marks FROM student;
SELECT DISTINCT city FROM student;

SELECT * FROM student WHERE marks > 80;
SELECT * FROM student WHERE city = "Dhaka";
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city IN ("Dhaka", "Chittagong");
SELECT * FROM student LIMIT 3;
SELECT * FROM student ORDER BY city ASC;
SELECT * FROM student ORDER BY marks DESC LIMIT 3;

SELECT MAX(marks) FROM student;

SELECT city, COUNT(name) FROM student GROUP BY city;

SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY AVG(marks) ASC; 

SELECT grade , COUNT(rollno) FROM student GROUP BY grade;

SELECT city, COUNT(rollno) FROM student GROUP BY city HAVING MAX(marks) > 90;

SELECT city, COUNT(rollno) FROM student GROUP BY city HAVING MIN(marks) > 80;

SELECT city FROM student WHERE grade = 'A' GROUP BY city HAVING MAX(marks) > 90 ORDER BY city ASC;

SET SQL_SAFE_UPDATES = 0;

UPDATE student SET grade = 'O' WHERE grade = 'A';

SELECT * FROM student; 

UPDATE student SET marks = 86 WHERE rollno = 4;

UPDATE student SET grade = 'B' WHERE marks BETWEEN 80 AND 89;

UPDATE student SET grade = 'A' WHERE marks BETWEEN 90 AND 100;

UPDATE student SET marks = marks + 1;

ALTER TABLE student
ADD COLUMN age INT;

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student
MODIFY age VARCHAR(2);


INSERT INTO student 
(rollno, name, marks, stu_age)
VALUES
(107, 'gargi', 68, 100);

ALTER TABLE student
CHANGE age stu_age INT;

ALTER TABLE stu
RENAME TO student;

SELECT * FROM student;

ALTER TABLE student
CHANGE name full_name VARCHAR(50);

DELETE FROM student WHERE marks < 80;

SET SQL_SAFE_UPDATES = 0; 

ALTER TABLE student
DROP COLUMN grade;


INSERT INTO student
(rollno, full_name, marks, grade, city)
VALUES
(101, 'zamanxs', 78, 'C', 'Chittagong')



















