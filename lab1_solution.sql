--Part 1 : DDL--

CREATE TABLE Student(
    RollNo NUMBER,
    Name VARCHAR2(50),
    Dept VARCHAR2(20),
    Age NUMBER,
    Phone VARCHAR2(15)
);

CREATE TABLE Courses(
    CourseID NUMBER,
    CourseName VARCHAR2(50),
    Credits NUMBER
);

ALTER TABLE Student ADD City VARCHAR2(30);
ALTER TABLE Student ADD Semester NUMBER;
ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;

--Part 2: DML--

INSERT INTO Student VALUES
(201, 'Piyush Kumar', 'CSE', 21, '9123456780', 'Patna', 5);

INSERT INTO Student VALUES
(202, 'Rohit Sharma', 'ECE', 22, '9234567810', 'Delhi', 6);

INSERT INTO Student VALUES
(203, 'Aman Verma', 'CSE(AI)', 20, '9345678921', 'Lucknow', 4);

INSERT INTO Student VALUES
(204, 'Saurabh Singh', 'CSE(ML)', 23, '9456789032', 'Bhopal', 7);

INSERT INTO Student VALUES
(205, 'Rahul', 'IT', 21, '9567890143', 'Ranchi', 5);

SELECT * FROM Student;

SELECT RollNo, Name FROM Student;

SELECT * FROM Student WHERE Dept = 'CSE';

SELECT * FROM Student WHERE Age > 20;

UPDATE Student SET Dept ='ECE' WHERE RollNo = 101;

UPDATE Student SET City ='Patna' WHERE Name = 'Rahul';

UPDATE Student SET Age = Age + 1;