CREATE DATABASE UNI;
USE UNI;

CREATE TABLE dept(
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

INSERT INTO dept
VALUES
(101, 'English'),
(102, 'Bangla');

SELECT * FROM dept;

UPDATE dept SET id = 103 WHERE id = 102; 

CREATE TABLE teacher(
 id INT PRIMARY KEY,
 name VARCHAR(50),
 dept_id INT,
 FOREIGN KEY (dept_id) REFERENCES dept(id)
 ON UPDATE CASCADE 
 ON DELETE CASCADE
);


INSERT INTO teacher
VALUES
(1, 'samir', 102),
(2, 'John', 101);

SELECT * FROM teacher;
