create database studentmanagment;
use studentmanagment;
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Grade VARCHAR(5),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);
INSERT INTO Students 
(Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
VALUES
('Amit', 'Male', 20, 'A', 85, 78, 90),
('Riya', 'Female', 19, 'B', 72, 80, 75),
('Rahul', 'Male', 21, 'A', 88, 85, 82),
('Sneha', 'Female', 20, 'A', 92, 89, 91),
('Karan', 'Male', 22, 'C', 60, 65, 58),
('Pooja', 'Female', 19, 'B', 76, 74, 79),
('Arjun', 'Male', 21, 'A', 90, 88, 86),
('Neha', 'Female', 20, 'C', 62, 60, 64),
('Vikas', 'Male', 22, 'B', 70, 72, 68),
('Anjali', 'Female', 19, 'A', 95, 93, 94);
select * from students;
SELECT 
AVG(MathScore) AS AvgMath,
AVG(ScienceScore) AS AvgScience,
AVG(EnglishScore) AS AvgEnglish
FROM Students;
SELECT Name, 
(MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;
SELECT Grade, COUNT(*) AS TotalStudents
FROM Students
GROUP BY Grade;
SELECT Gender,
AVG(MathScore + ScienceScore + EnglishScore) AS AvgTotalScore
FROM Students
GROUP BY Gender;
SELECT * FROM Students
WHERE MathScore > 80;
UPDATE Students
SET Grade = 'A'
WHERE Name = 'Riya';
SELECT * FROM Students WHERE Name = 'Riya';