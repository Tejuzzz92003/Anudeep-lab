#Student Management System 
-- Create Database
CREATE DATABASE StudentManagementSystem;
#Output:
Query OK, 1 row affected

-- Use Database
USE StudentManagementSystem;
# Output:
Database changed

-- Create Student Table
CREATE TABLE Student (
    StudentId INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);
# Output:

Query OK, 0 rows affected

-- Create Course Table
CREATE TABLE Course (
    CourseId INT PRIMARY KEY,
    CourseName VARCHAR(100)
);
# Output:
Query OK, 0 rows affected

-- Create Enrollment Table
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    
    FOREIGN KEY (StudentID) REFERENCES Student(StudentId),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseId)
);
# Output:
Query OK, 0 rows affected

-- Insert Data into Student Table
INSERT INTO Student VALUES
(1, 'Tejaswini', 'Patil'),
(2, 'Rahul', 'Sharma'),
(3, 'Sneha', 'Joshi');
# Output:
Query OK, 3 rows affected

-- Display Student Table
SELECT * FROM Student;
# Output:
| StudentId | FirstName | LastName |
| --------- | --------- | -------- |
| 1         | Tejaswini | Patil    |
| 2         | Rahul     | Sharma   |
| 3         | Sneha     | Joshi    |


-- Insert Data into Course Table
INSERT INTO Course VALUES
(101, 'Java'),
(102, 'Python'),
(103, 'DBMS');
# Output:
Query OK, 3 rows affected

-- Display Course Table
SELECT * FROM Course;
# Output:
| CourseId | CourseName |
| -------- | ---------- |
| 101      | Java       |
| 102      | Python     |
| 103      | DBMS       |

-- Insert Data into Enrollment Table
INSERT INTO Enrollment VALUES
(1, 1, 101),
(2, 2, 102),
(3, 3, 103);
# Output:
Query OK, 3 rows affected

-- Display Enrollment Table
SELECT * FROM Enrollment;
# Output:

| EnrollmentID | StudentID | CourseID |
| ------------ | --------- | -------- |
| 1            | 1         | 101      |
| 2            | 2         | 102      |
| 3            | 3         | 103      |

-- INNER JOIN Query
SELECT
    Student.StudentId,
    Student.FirstName,
    Student.LastName,
    Course.CourseName
FROM Enrollment
INNER JOIN Student
ON Enrollment.StudentID = Student.StudentId
INNER JOIN Course
ON Enrollment.CourseID = Course.CourseId;
# Output:

| StudentId | FirstName | LastName | CourseName |
| --------- | --------- | -------- | ---------- |
| 1         | Tejaswini | Patil    | Java       |
| 2         | Rahul     | Sharma   | Python     |
| 3         | Sneha     | Joshi    | DBMS       |
