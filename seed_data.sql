INSERT INTO users (u_name, email, password_hash, role_) VALUES
('Alice Johnson', 'alice@example.com', 'hashed_pw_1', 'student'),
('Bob Smith', 'bob@example.com', 'hashed_pw_2', 'student'),
('Dr. Sarah Lee', 'sarah.lee@university.edu', 'hashed_pw_3', 'organizer'),
('Prof. Amir Khan', 'amir.khan@university.edu', 'hashed_pw_4', 'organizer');

INSERT INTO event_ (title, description, event_datetime, registration_deadline, category, venue) VALUES
('Tech Innovation Fair', 'Showcasing student tech startups', '2025-06-15 10:00:00', '2025-06-14 23:59:59', 'Tech', 'Auditorium A'),
('Annual Music Night', 'Live music performances by students', '2025-07-01 18:00:00', '2025-06-30 23:59:59', 'Music', 'Open Air Theatre'),
('AI Workshop', 'Hands-on workshop on AI tools', '2025-06-25 14:00:00', '2025-06-24 23:59:59', 'Tech', 'Lab 3, Tech Block');

INSERT INTO event_organizers (eventID, userID) VALUES
(101, 3),  -- Dr. Sarah Lee
(102, 4),  -- Prof. Amir Khan
(103, 3),
(103, 4);

INSERT INTO registration (userID, eventID, status) VALUES
(1, 101, 'registered'),
(2, 101, 'registered'),
(1, 102, 'cancelled'),
(2, 103, 'registered');
