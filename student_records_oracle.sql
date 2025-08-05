
-- Create Students Table
CREATE TABLE students (
    student_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    age NUMBER,
    gender VARCHAR2(10),
    department VARCHAR2(50)
);

-- Create Courses Table
CREATE TABLE courses (
    course_id NUMBER PRIMARY KEY,
    course_name VARCHAR2(100),
    credit NUMBER
);

-- Create Enrollments Table with Foreign Keys
CREATE TABLE enrollments (
    enrollment_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    course_id NUMBER,
    marks NUMBER,
    CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES students(student_id),
    CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Insert data into Students Table
INSERT INTO students VALUES (1, 'Amit Sharma', 20, 'Male', 'Computer Science');
INSERT INTO students VALUES (2, 'Pooja Roy', 21, 'Female', 'IT');

-- Insert data into Courses Table
INSERT INTO courses VALUES (101, 'SQL Basics', 3);
INSERT INTO courses VALUES (102, 'Networks', 4);

-- Insert data into Enrollments Table
INSERT INTO enrollments VALUES (1, 1, 101, 88);
INSERT INTO enrollments VALUES (2, 1, 102, 75);
INSERT INTO enrollments VALUES (3, 2, 101, 91);
