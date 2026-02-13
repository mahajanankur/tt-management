CREATE DATABASE IF NOT EXISTS project;
USE project;

-- 1. Login Table
CREATE TABLE IF NOT EXISTS login (
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);
INSERT INTO login (username, password) VALUES ('admin', 'admin');

-- 2. Days Table
CREATE TABLE IF NOT EXISTS days (
    id INT AUTO_INCREMENT PRIMARY KEY,
    day VARCHAR(20)
);
INSERT INTO days (day) VALUES ('Monday'), ('Tuesday'), ('Wednesday'), ('Thursday'), ('Friday');

-- 3. Period Table
CREATE TABLE IF NOT EXISTS period (
    id VARCHAR(50) PRIMARY KEY,
    startTime VARCHAR(50),
    endTime VARCHAR(50)
);
INSERT INTO period (id, startTime, endTime) VALUES
('P1', '09:00', '10:00'),
('P2', '10:00', '11:00'),
('P3', '11:00', '12:00'),
('P4', '13:00', '14:00'),
('P5', '14:00', '15:00'),
('P6', '15:00', '16:00');

-- 4. Faculty Table
CREATE TABLE IF NOT EXISTS faculty (
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);
INSERT INTO faculty (id, name) VALUES
('F001', 'Dr. Rajesh Kumar'),
('F002', 'Prof. Anjali Sharma'),
('F003', 'Dr. Vikram Singh'),
('F004', 'Prof. Neha Gupta'),
('F005', 'Dr. Amit Patel'),
('F006', 'Prof. Priya Desai'),
('F007', 'Dr. Suresh Reddy'),
('F008', 'Prof. Kavita Krishnan'),
('F009', 'Dr. Manish Verma'),
('F010', 'Prof. Rohan Das'),
('F011', 'Dr. Meera Nair'),
('F012', 'Prof. Arjun Rao'),
('F013', 'Dr. Sanya Malhotra'),
('F014', 'Prof. Karan Mehra');

-- 5. Subjects Table
CREATE TABLE IF NOT EXISTS subjects (
    id VARCHAR(50) PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);
INSERT INTO subjects (id, title) VALUES
('CS101', 'Engineering Mathematics-I'),
('CS102', 'LCS'),
('CS103', 'Engineering Physics'),
('CS104', 'Basic Electronics'),
('CS105', 'C Programming'),
('CS301', 'Data Structures'),
('CS302', 'Digital Logic'),
('CS303', 'Discrete Mathematics'),
('CS304', 'OOPs with Java'),
('CS305', 'Computer Organization'),
('CS501', 'Database Management Systems'),
('CS502', 'Operating Systems'),
('CS503', 'Computer Networks'),
('CS504', 'Software Engineering'),
('CS505', 'Automata Theory'),
('CS701', 'Artificial Intelligence'),
('CS702', 'Cloud Computing'),
('CS703', 'Machine Learning'),
('CS704', 'Information Security'),
('CS705', 'Big Data Analytics');

-- 6. Rooms Table
CREATE TABLE IF NOT EXISTS rooms (
    roomId VARCHAR(50) PRIMARY KEY,
    roomDept VARCHAR(255),
    capacity INT
);
INSERT INTO rooms (roomId, roomDept, capacity) VALUES
('LH-001', 'First Year Block', 60),
('LH-101', 'CSE Block A', 60),
('LH-102', 'CSE Block A', 60),
('LH-103', 'CSE Block B', 60),
('LAB-1', 'Computer Centre', 40),
('LAB-2', 'Hardware Lab', 30),
('LAB-3', 'IoT Lab', 30);

-- 7. Semesters Table
CREATE TABLE IF NOT EXISTS semesters (
    id INT AUTO_INCREMENT PRIMARY KEY,
    roomId VARCHAR(50)
);
INSERT INTO semesters (roomId) VALUES 
('LH-001'), ('LH-101'), ('LH-102'), ('LH-103'), ('LAB-1'), ('LAB-2'), ('LAB-3');

-- 8. Assigned Data (Timetable Entries)
CREATE TABLE IF NOT EXISTS assignedData (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dayId INT,
    period VARCHAR(50),
    Semister VARCHAR(50), 
    subject VARCHAR(255),
    faculty VARCHAR(255),
    classroom VARCHAR(50),
    FOREIGN KEY (dayId) REFERENCES days(id)
);

-- Full Week Schedule for ALL Rooms

-- ==========================================
-- 1. LH-001 (First Year)
-- ==========================================
INSERT INTO assignedData (dayId, period, Semister, subject, faculty, classroom) VALUES
(1, 'P1', 'LH-001', 'Engineering Mathematics-I', 'Prof. Arjun Rao', 'LH-001'),
(1, 'P2', 'LH-001', 'Engineering Physics', 'Dr. Sanya Malhotra', 'LH-001'),
(1, 'P3', 'LH-001', 'C Programming', 'Prof. Karan Mehra', 'LH-001'),
(1, 'P4', 'LH-001', 'Basic Electronics', 'Dr. Meera Nair', 'LH-001'),
(1, 'P5', 'LH-001', 'LCS', 'Prof. Rohan Das', 'LH-001'),
(1, 'P6', 'LH-001', 'C Programming', 'Prof. Karan Mehra', 'LH-001'),

(2, 'P1', 'LH-001', 'Engineering Physics', 'Dr. Sanya Malhotra', 'LH-001'),
(2, 'P2', 'LH-001', 'Basic Electronics', 'Dr. Meera Nair', 'LH-001'),
(2, 'P3', 'LH-001', 'Engineering Mathematics-I', 'Prof. Arjun Rao', 'LH-001'),
(2, 'P4', 'LH-001', 'LCS', 'Prof. Rohan Das', 'LH-001'),
(2, 'P5', 'LH-001', 'C Programming', 'Prof. Karan Mehra', 'LH-001'),
(2, 'P6', 'LH-001', 'Engineering Physics', 'Dr. Sanya Malhotra', 'LH-001'),

(3, 'P1', 'LH-001', 'Basic Electronics', 'Dr. Meera Nair', 'LH-001'),
(3, 'P2', 'LH-001', 'LCS', 'Prof. Rohan Das', 'LH-001'),
(3, 'P3', 'LH-001', 'Engineering Mathematics-I', 'Prof. Arjun Rao', 'LH-001'),
(3, 'P4', 'LH-001', 'Engineering Physics', 'Dr. Sanya Malhotra', 'LH-001'),
(3, 'P5', 'LH-001', 'C Programming', 'Prof. Karan Mehra', 'LH-001'),
(3, 'P6', 'LH-001', 'Basic Electronics', 'Dr. Meera Nair', 'LH-001'),

(4, 'P1', 'LH-001', 'LCS', 'Prof. Rohan Das', 'LH-001'),
(4, 'P2', 'LH-001', 'Engineering Mathematics-I', 'Prof. Arjun Rao', 'LH-001'),
(4, 'P3', 'LH-001', 'Engineering Physics', 'Dr. Sanya Malhotra', 'LH-001'),
(4, 'P4', 'LH-001', 'C Programming', 'Prof. Karan Mehra', 'LH-001'),
(4, 'P5', 'LH-001', 'Basic Electronics', 'Dr. Meera Nair', 'LH-001'),
(4, 'P6', 'LH-001', 'LCS', 'Prof. Rohan Das', 'LH-001'),

(5, 'P1', 'LH-001', 'Engineering Mathematics-I', 'Prof. Arjun Rao', 'LH-001'),
(5, 'P2', 'LH-001', 'Engineering Physics', 'Dr. Sanya Malhotra', 'LH-001'),
(5, 'P3', 'LH-001', 'Basic Electronics', 'Dr. Meera Nair', 'LH-001'),
(5, 'P4', 'LH-001', 'C Programming', 'Prof. Karan Mehra', 'LH-001'),
(5, 'P5', 'LH-001', 'LCS', 'Prof. Rohan Das', 'LH-001'),
(5, 'P6', 'LH-001', 'Engineering Mathematics-I', 'Prof. Arjun Rao', 'LH-001');

-- ==========================================
-- 2. LH-101 (3rd Semester)
-- ==========================================
INSERT INTO assignedData (dayId, period, Semister, subject, faculty, classroom) VALUES
(1, 'P1', 'LH-101', 'Data Structures', 'Dr. Rajesh Kumar', 'LH-101'),
(1, 'P2', 'LH-101', 'Computer Organization', 'Dr. Manish Verma', 'LH-101'),
(1, 'P3', 'LH-101', 'Digital Logic', 'Prof. Anjali Sharma', 'LH-101'),
(1, 'P4', 'LH-101', 'Discrete Mathematics', 'Dr. Vikram Singh', 'LH-101'),
(1, 'P5', 'LH-101', 'OOPs with Java', 'Prof. Neha Gupta', 'LH-101'),
(1, 'P6', 'LH-101', 'Data Structures', 'Dr. Rajesh Kumar', 'LH-101'),

(2, 'P1', 'LH-101', 'Digital Logic', 'Prof. Anjali Sharma', 'LH-101'),
(2, 'P2', 'LH-101', 'OOPs with Java', 'Prof. Neha Gupta', 'LH-101'),
(2, 'P3', 'LH-101', 'Data Structures', 'Dr. Rajesh Kumar', 'LH-101'),
(2, 'P4', 'LH-101', 'Computer Organization', 'Dr. Manish Verma', 'LH-101'),
(2, 'P5', 'LH-101', 'Discrete Mathematics', 'Dr. Vikram Singh', 'LH-101'),
(2, 'P6', 'LH-101', 'Digital Logic', 'Prof. Anjali Sharma', 'LH-101'),

(3, 'P1', 'LH-101', 'Discrete Mathematics', 'Dr. Vikram Singh', 'LH-101'),
(3, 'P2', 'LH-101', 'Data Structures', 'Dr. Rajesh Kumar', 'LH-101'),
(3, 'P3', 'LH-101', 'Computer Organization', 'Dr. Manish Verma', 'LH-101'),
(3, 'P4', 'LH-101', 'Digital Logic', 'Prof. Anjali Sharma', 'LH-101'),
(3, 'P5', 'LH-101', 'OOPs with Java', 'Prof. Neha Gupta', 'LH-101'),
(3, 'P6', 'LH-101', 'Discrete Mathematics', 'Dr. Vikram Singh', 'LH-101'),

(4, 'P1', 'LH-101', 'OOPs with Java', 'Prof. Neha Gupta', 'LH-101'),
(4, 'P2', 'LH-101', 'Digital Logic', 'Prof. Anjali Sharma', 'LH-101'),
(4, 'P3', 'LH-101', 'Discrete Mathematics', 'Dr. Vikram Singh', 'LH-101'),
(4, 'P4', 'LH-101', 'Data Structures', 'Dr. Rajesh Kumar', 'LH-101'),
(4, 'P5', 'LH-101', 'Computer Organization', 'Dr. Manish Verma', 'LH-101'),
(4, 'P6', 'LH-101', 'OOPs with Java', 'Prof. Neha Gupta', 'LH-101'),

(5, 'P1', 'LH-101', 'Computer Organization', 'Dr. Manish Verma', 'LH-101'),
(5, 'P2', 'LH-101', 'Discrete Mathematics', 'Dr. Vikram Singh', 'LH-101'),
(5, 'P3', 'LH-101', 'Data Structures', 'Dr. Rajesh Kumar', 'LH-101'),
(5, 'P4', 'LH-101', 'OOPs with Java', 'Prof. Neha Gupta', 'LH-101'),
(5, 'P5', 'LH-101', 'Digital Logic', 'Prof. Anjali Sharma', 'LH-101'),
(5, 'P6', 'LH-101', 'Computer Organization', 'Dr. Manish Verma', 'LH-101');


-- ==========================================
-- 3. LH-102 (5th Semester)
-- ==========================================
INSERT INTO assignedData (dayId, period, Semister, subject, faculty, classroom) VALUES
(1, 'P1', 'LH-102', 'Database Management Systems', 'Prof. Priya Desai', 'LH-102'),
(1, 'P2', 'LH-102', 'Operating Systems', 'Dr. Amit Patel', 'LH-102'),
(1, 'P3', 'LH-102', 'Computer Networks', 'Prof. Kavita Krishnan', 'LH-102'),
(1, 'P4', 'LH-102', 'Software Engineering', 'Dr. Suresh Reddy', 'LH-102'),
(1, 'P5', 'LH-102', 'Automata Theory', 'Prof. Rohan Das', 'LH-102'),
(1, 'P6', 'LH-102', 'Computer Networks', 'Prof. Kavita Krishnan', 'LH-102'),

(2, 'P1', 'LH-102', 'Operating Systems', 'Dr. Amit Patel', 'LH-102'),
(2, 'P2', 'LH-102', 'Software Engineering', 'Dr. Suresh Reddy', 'LH-102'),
(2, 'P3', 'LH-102', 'Database Management Systems', 'Prof. Priya Desai', 'LH-102'),
(2, 'P4', 'LH-102', 'Automata Theory', 'Prof. Rohan Das', 'LH-102'),
(2, 'P5', 'LH-102', 'Computer Networks', 'Prof. Kavita Krishnan', 'LH-102'),
(2, 'P6', 'LH-102', 'Database Management Systems', 'Prof. Priya Desai', 'LH-102'),

(3, 'P1', 'LH-102', 'Computer Networks', 'Prof. Kavita Krishnan', 'LH-102'),
(3, 'P2', 'LH-102', 'Database Management Systems', 'Prof. Priya Desai', 'LH-102'),
(3, 'P3', 'LH-102', 'Operating Systems', 'Dr. Amit Patel', 'LH-102'),
(3, 'P4', 'LH-102', 'Software Engineering', 'Dr. Suresh Reddy', 'LH-102'),
(3, 'P5', 'LH-102', 'Automata Theory', 'Prof. Rohan Das', 'LH-102'),
(3, 'P6', 'LH-102', 'Operating Systems', 'Dr. Amit Patel', 'LH-102'),

(4, 'P1', 'LH-102', 'Automata Theory', 'Prof. Rohan Das', 'LH-102'),
(4, 'P2', 'LH-102', 'Operating Systems', 'Dr. Amit Patel', 'LH-102'),
(4, 'P3', 'LH-102', 'Computer Networks', 'Prof. Kavita Krishnan', 'LH-102'),
(4, 'P4', 'LH-102', 'Database Management Systems', 'Prof. Priya Desai', 'LH-102'),
(4, 'P5', 'LH-102', 'Software Engineering', 'Dr. Suresh Reddy', 'LH-102'),
(4, 'P6', 'LH-102', 'Automata Theory', 'Prof. Rohan Das', 'LH-102'),

(5, 'P1', 'LH-102', 'Software Engineering', 'Dr. Suresh Reddy', 'LH-102'),
(5, 'P2', 'LH-102', 'Automata Theory', 'Prof. Rohan Das', 'LH-102'),
(5, 'P3', 'LH-102', 'Database Management Systems', 'Prof. Priya Desai', 'LH-102'),
(5, 'P4', 'LH-102', 'Operating Systems', 'Dr. Amit Patel', 'LH-102'),
(5, 'P5', 'LH-102', 'Computer Networks', 'Prof. Kavita Krishnan', 'LH-102'),
(5, 'P6', 'LH-102', 'Software Engineering', 'Dr. Suresh Reddy', 'LH-102');


-- ==========================================
-- 4. LH-103 (7th Semester)
-- ==========================================
INSERT INTO assignedData (dayId, period, Semister, subject, faculty, classroom) VALUES
(1, 'P1', 'LH-103', 'Artificial Intelligence', 'Dr. Suresh Reddy', 'LH-103'),
(1, 'P2', 'LH-103', 'Cloud Computing', 'Prof. Kavita Krishnan', 'LH-103'),
(1, 'P3', 'LH-103', 'Machine Learning', 'Dr. Manish Verma', 'LH-103'),
(1, 'P4', 'LH-103', 'Information Security', 'Prof. Arjun Rao', 'LH-103'),
(1, 'P5', 'LH-103', 'Big Data Analytics', 'Dr. Meera Nair', 'LH-103'),
(1, 'P6', 'LH-103', 'Machine Learning', 'Dr. Manish Verma', 'LH-103'),

(2, 'P1', 'LH-103', 'Cloud Computing', 'Prof. Kavita Krishnan', 'LH-103'),
(2, 'P2', 'LH-103', 'Machine Learning', 'Dr. Manish Verma', 'LH-103'),
(2, 'P3', 'LH-103', 'Artificial Intelligence', 'Dr. Suresh Reddy', 'LH-103'),
(2, 'P4', 'LH-103', 'Big Data Analytics', 'Dr. Meera Nair', 'LH-103'),
(2, 'P5', 'LH-103', 'Information Security', 'Prof. Arjun Rao', 'LH-103'),
(2, 'P6', 'LH-103', 'Artificial Intelligence', 'Dr. Suresh Reddy', 'LH-103'),

(3, 'P1', 'LH-103', 'Machine Learning', 'Dr. Manish Verma', 'LH-103'),
(3, 'P2', 'LH-103', 'Artificial Intelligence', 'Dr. Suresh Reddy', 'LH-103'),
(3, 'P3', 'LH-103', 'Cloud Computing', 'Prof. Kavita Krishnan', 'LH-103'),
(3, 'P4', 'LH-103', 'Information Security', 'Prof. Arjun Rao', 'LH-103'),
(3, 'P5', 'LH-103', 'Big Data Analytics', 'Dr. Meera Nair', 'LH-103'),
(3, 'P6', 'LH-103', 'Cloud Computing', 'Prof. Kavita Krishnan', 'LH-103'),

(4, 'P1', 'LH-103', 'Big Data Analytics', 'Dr. Meera Nair', 'LH-103'),
(4, 'P2', 'LH-103', 'Cloud Computing', 'Prof. Kavita Krishnan', 'LH-103'),
(4, 'P3', 'LH-103', 'Information Security', 'Prof. Arjun Rao', 'LH-103'),
(4, 'P4', 'LH-103', 'Artificial Intelligence', 'Dr. Suresh Reddy', 'LH-103'),
(4, 'P5', 'LH-103', 'Machine Learning', 'Dr. Manish Verma', 'LH-103'),
(4, 'P6', 'LH-103', 'Big Data Analytics', 'Dr. Meera Nair', 'LH-103'),

(5, 'P1', 'LH-103', 'Information Security', 'Prof. Arjun Rao', 'LH-103'),
(5, 'P2', 'LH-103', 'Big Data Analytics', 'Dr. Meera Nair', 'LH-103'),
(5, 'P3', 'LH-103', 'Artificial Intelligence', 'Dr. Suresh Reddy', 'LH-103'),
(5, 'P4', 'LH-103', 'Cloud Computing', 'Prof. Kavita Krishnan', 'LH-103'),
(5, 'P5', 'LH-103', 'Machine Learning', 'Dr. Manish Verma', 'LH-103'),
(5, 'P6', 'LH-103', 'Information Security', 'Prof. Arjun Rao', 'LH-103');


-- ==========================================
-- 5. LAB-1 (Computer Centre)
-- ==========================================
INSERT INTO assignedData (dayId, period, Semister, subject, faculty, classroom) VALUES
(1, 'P1', 'LAB-1', 'C Programming', 'Prof. Karan Mehra', 'LAB-1'),
(1, 'P2', 'LAB-1', 'C Programming', 'Prof. Karan Mehra', 'LAB-1'),
(1, 'P3', 'LAB-1', 'C Programming', 'Prof. Karan Mehra', 'LAB-1'),
(2, 'P1', 'LAB-1', 'Data Structures', 'Dr. Rajesh Kumar', 'LAB-1'),
(2, 'P2', 'LAB-1', 'Data Structures', 'Dr. Rajesh Kumar', 'LAB-1'),
(2, 'P3', 'LAB-1', 'Data Structures', 'Dr. Rajesh Kumar', 'LAB-1'),
(3, 'P1', 'LAB-1', 'Database Management Systems', 'Prof. Priya Desai', 'LAB-1'),
(3, 'P2', 'LAB-1', 'Database Management Systems', 'Prof. Priya Desai', 'LAB-1'),
(3, 'P3', 'LAB-1', 'Database Management Systems', 'Prof. Priya Desai', 'LAB-1'),
(4, 'P1', 'LAB-1', 'OOPs with Java', 'Prof. Neha Gupta', 'LAB-1'),
(4, 'P2', 'LAB-1', 'OOPs with Java', 'Prof. Neha Gupta', 'LAB-1'),
(4, 'P3', 'LAB-1', 'OOPs with Java', 'Prof. Neha Gupta', 'LAB-1'),
(5, 'P1', 'LAB-1', 'Machine Learning', 'Dr. Manish Verma', 'LAB-1'),
(5, 'P2', 'LAB-1', 'Machine Learning', 'Dr. Manish Verma', 'LAB-1'),
(5, 'P3', 'LAB-1', 'Machine Learning', 'Dr. Manish Verma', 'LAB-1');


-- ==========================================
-- 6. LAB-2 (Hardware Lab)
-- ==========================================
INSERT INTO assignedData (dayId, period, Semister, subject, faculty, classroom) VALUES
(1, 'P4', 'LAB-2', 'Digital Logic', 'Prof. Anjali Sharma', 'LAB-2'),
(1, 'P5', 'LAB-2', 'Digital Logic', 'Prof. Anjali Sharma', 'LAB-2'),
(1, 'P6', 'LAB-2', 'Digital Logic', 'Prof. Anjali Sharma', 'LAB-2'),
(2, 'P4', 'LAB-2', 'Computer Organization', 'Dr. Manish Verma', 'LAB-2'),
(2, 'P5', 'LAB-2', 'Computer Organization', 'Dr. Manish Verma', 'LAB-2'),
(2, 'P6', 'LAB-2', 'Computer Organization', 'Dr. Manish Verma', 'LAB-2'),
(3, 'P4', 'LAB-2', 'Basic Electronics', 'Dr. Meera Nair', 'LAB-2'),
(3, 'P5', 'LAB-2', 'Basic Electronics', 'Dr. Meera Nair', 'LAB-2'),
(3, 'P6', 'LAB-2', 'Basic Electronics', 'Dr. Meera Nair', 'LAB-2'),
(4, 'P4', 'LAB-2', 'Engineering Physics', 'Dr. Sanya Malhotra', 'LAB-2'),
(4, 'P5', 'LAB-2', 'Engineering Physics', 'Dr. Sanya Malhotra', 'LAB-2'),
(4, 'P6', 'LAB-2', 'Engineering Physics', 'Dr. Sanya Malhotra', 'LAB-2'),
(5, 'P4', 'LAB-2', 'Computer Networks', 'Prof. Kavita Krishnan', 'LAB-2'),
(5, 'P5', 'LAB-2', 'Computer Networks', 'Prof. Kavita Krishnan', 'LAB-2'),
(5, 'P6', 'LAB-2', 'Computer Networks', 'Prof. Kavita Krishnan', 'LAB-2');

-- ==========================================
-- 7. LAB-3 (IoT Lab)
-- ==========================================
INSERT INTO assignedData (dayId, period, Semister, subject, faculty, classroom) VALUES
(1, 'P1', 'LAB-3', 'Cloud Computing', 'Prof. Kavita Krishnan', 'LAB-3'),
(1, 'P2', 'LAB-3', 'Cloud Computing', 'Prof. Kavita Krishnan', 'LAB-3'),
(1, 'P3', 'LAB-3', 'Cloud Computing', 'Prof. Kavita Krishnan', 'LAB-3'),
(2, 'P1', 'LAB-3', 'Big Data Analytics', 'Dr. Meera Nair', 'LAB-3'),
(2, 'P2', 'LAB-3', 'Big Data Analytics', 'Dr. Meera Nair', 'LAB-3'),
(2, 'P3', 'LAB-3', 'Big Data Analytics', 'Dr. Meera Nair', 'LAB-3'),
(3, 'P1', 'LAB-3', 'Information Security', 'Prof. Arjun Rao', 'LAB-3'),
(3, 'P2', 'LAB-3', 'Information Security', 'Prof. Arjun Rao', 'LAB-3'),
(3, 'P3', 'LAB-3', 'Information Security', 'Prof. Arjun Rao', 'LAB-3'),
(4, 'P1', 'LAB-3', 'Artificial Intelligence', 'Dr. Suresh Reddy', 'LAB-3'),
(4, 'P2', 'LAB-3', 'Artificial Intelligence', 'Dr. Suresh Reddy', 'LAB-3'),
(4, 'P3', 'LAB-3', 'Artificial Intelligence', 'Dr. Suresh Reddy', 'LAB-3'),
(5, 'P1', 'LAB-3', 'Operating Systems', 'Dr. Amit Patel', 'LAB-3'),
(5, 'P2', 'LAB-3', 'Operating Systems', 'Dr. Amit Patel', 'LAB-3'),
(5, 'P3', 'LAB-3', 'Operating Systems', 'Dr. Amit Patel', 'LAB-3');
