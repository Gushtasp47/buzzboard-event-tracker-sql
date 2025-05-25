DROP TABLE IF EXISTS registration;
DROP TABLE IF EXISTS event_organizers;
DROP TABLE IF EXISTS event_;
DROP TABLE IF EXISTS users;

-- Users table
CREATE TABLE users (
    userID INT IDENTITY(1,1) PRIMARY KEY,
    u_name VARCHAR(100) NOT NULL,
    email VARCHAR(140) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    role_ VARCHAR(40) CHECK (role_ IN ('student', 'organizer')) DEFAULT 'student'
);

-- Events table
CREATE TABLE event_ (
    eventID INT IDENTITY(101,1) PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    event_datetime DATETIME NOT NULL,
    registration_deadline DATETIME NOT NULL,
    category VARCHAR(50),
    venue VARCHAR(100)
);

-- Many-to-many mapping of event organizers
CREATE TABLE event_organizers (
    eventID INT,
    userID INT,
    PRIMARY KEY (eventID, userID),
    FOREIGN KEY (eventID) REFERENCES event_(eventID),
    FOREIGN KEY (userID) REFERENCES users(userID)
);

-- Registration table
CREATE TABLE registration (
    registrationID INT IDENTITY(1001,1) PRIMARY KEY,
    userID INT NOT NULL,
    eventID INT NOT NULL,
    status VARCHAR(20) CHECK (status IN ('registered', 'attended', 'cancelled')) DEFAULT 'registered',
    FOREIGN KEY (userID) REFERENCES users(userID),
    FOREIGN KEY (eventID) REFERENCES event_(eventID),
    UNIQUE (userID, eventID)
);
