USE advising;

INSERT INTO faculty (faculty_first_name, faculty_last_name, faculty_email)
VALUES 
('Bill', 'Jones', 'bill@yahoo.com'),
('John', 'Smith', 'jsmith@gmail.com'),
('Joe', 'Johnson', 'joej@gmail.com');

INSERT INTO advisor (faculty_id, advisor_first_name, advisor_last_name, advisor_email)
VALUES 
(2, 'Barbara', 'Johnston', 'barbaraj@yahoo.com'),
(1, 'Sara', 'Jones', 'saraj@gmail.com'),
(3, 'Jack', 'Nicholson', 'jackn@gmail.com');

INSERT INTO student(student_first_name, student_last_name, major, student_email)
VALUES
('Keith', 'Jones', 'IS', 'keithj@gmail.com'),
('Zach', 'Robinson', 'CS', 'zachr@gmail.com'),
('Sam', 'Jay', 'accounting', 'samj@gmail.com');

INSERT INTO appointment(student_id, advisor_id, room, building, appt_date)
VALUES
(2, 1, 500, 'Building A', '2020-10-23 09:11:09'),
(3, 2, 300, 'Building B', '2020-11-10 10:14:43'),
(1, 3, 400, 'Building C', '2020-12-01 04:03:02');

-- Question 1: Select all students with a CS major
SELECT s.student_first_name, s.student_last_name FROM student as s WHERE s.major = 'CS';

-- Question 2: Find all of Barbara Johnston's students
SELECT s.student_first_name, s.student_last_name FROM student as s INNER JOIN appointment as appt ON s.student_id = appt.student_id INNER JOIN advisor as a ON a.advisor_id = appt.advisor_id WHERE a.advisor_first_name = 'Barbara' AND a.advisor_last_name = 'Johnston';

-- Question 3: Find if Jack Nicholson has any appointments in Building C
SELECT a.advisor_first_name, a.advisor_last_name, appt.appointment_id, appt.room, appt.appt_date FROM appointment as appt INNER JOIN advisor as a ON appt.advisor_id = a.advisor_id WHERE appt.building = 'Building C';
