Create database Challenge ;
use challenge;
CREATE TABLE STUDENT(ROLL_NO INT PRIMARY KEY,NAME VARCHAR(40),MARK FLOAT,GRADE VARCHAR(3));
INSERT INTO STUDENT VALUES (1,'ABHI', 84.5,'B'),
(2,'BALU',75,'C'),
(3,'HARSHA',91,'A'),
(4,'RAM',96,'A'),
(5,'MANEESHA',80.5,'B'),
(6,'MANU',64,'D'),
(7,'NEXON',98,'A'),
(8,'SHYAM',86,'B'),
(9,'TOM',55,'E'),
(10,'ZACHARIAH',91,'A');

DESC STUDENT;
SELECT * FROM STUDENT;
SELECT Name, Mark  FROM STUDENT where mark>80;
SELECT Name, Mark  FROM STUDENT where mark>80 order by name ;