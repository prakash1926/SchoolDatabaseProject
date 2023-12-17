CREATE DATABASE SchoolManagement;
USE SchoolManagement;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    ClassID INT
);

CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName NVARCHAR(50)
);

CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName NVARCHAR(50)
);

CREATE INDEX IX_Student_ClassID ON Student (ClassID);

INSERT INTO Classes (ClassID, ClassName) VALUES
(1, 'Class 9'),
(2, 'Class 10'),
(3, 'Class 11');

INSERT INTO Subjects (SubjectID, SubjectName) VALUES
(1, 'Math'),
(2, 'Science'),
(3, 'English'),
(4, 'History');

INSERT INTO Student (StudentID, FirstName, LastName, ClassID) VALUES
(1, 'Anantha', 'Prakash', 1),
(2, 'Karthick', 'Dev', 2),
(3, 'Jai', 'Krishna', 1),
(4, 'Vijay', 'Antony', 3),
(5, 'Vijay', 'Joshep', 2);

SELECT 
    s.StudentID,
    s.FirstName,
    s.LastName,
    c.ClassName,
    sub.SubjectName
FROM 
    Student s
JOIN 
    Classes c ON s.ClassID = c.ClassID
CROSS JOIN 
    Subjects sub;


