-- Create a new databa
CREATE DATABASE RainbowSchoolManagement;

USE RainbowSchoolManagement;
GO

-- Create tables for Student, Subject, and Class
-- You should modify this part to match your actual table schema\
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Email VARCHAR(100),
    Phone VARCHAR(20)
);

CREATE TABLE Subject (
    SubjectID INT PRIMARY KEY not null,
    SubjectName VARCHAR(100),
    Description TEXT
);

CREATE TABLE Class (
    ClassID INT PRIMARY KEY,
    StudentID INT,
    SubjectID INT,
    Schedule VARCHAR(100),
    Professor VARCHAR(50)
    -- Add other columns as needed
);

-- Add foreign key constraints
ALTER TABLE Class
ADD CONSTRAINT FK_StudentID FOREIGN KEY (StudentID) REFERENCES Student(StudentID);

ALTER TABLE Class
ADD CONSTRAINT FK_SubjectID FOREIGN KEY (SubjectID) REFERENCES Subject(SubjectID);
