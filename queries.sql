SELECT 
    DATENAME(MONTH, event_datetime) AS MonthName,
    COUNT(*) AS TotalEvents
FROM 
    event_
GROUP BY 
    DATENAME(MONTH, event_datetime)
ORDER BY 
    TotalEvents DESC;

SELECT 
    e.title,
    COUNT(r.registrationID) AS TotalRegistrations
FROM 
    event_ e
JOIN 
    registration r ON e.eventID = r.eventID
GROUP BY 
    e.title
ORDER BY 
    TotalRegistrations DESC
OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY;

SELECT 
    u.u_name AS Organizer,
    COUNT(DISTINCT eo.eventID) AS TotalEventsOrganized
FROM 
    event_organizers eo
JOIN 
    users u ON eo.userID = u.userID
GROUP BY 
    u.u_name
ORDER BY 
    TotalEventsOrganized DESC;

SELECT 
    title,
    event_datetime,
    registration_deadline
FROM 
    event_
WHERE 
    registration_deadline > GETDATE()
ORDER BY 
    registration_deadline ASC;

SELECT 
    e.title
FROM 
    event_ e
LEFT JOIN 
    registration r ON e.eventID = r.eventID
WHERE 
    r.registrationID IS NULL;

SELECT 
    e.title,
    r.status,
    COUNT(*) AS Participants
FROM 
    event_ e
JOIN 
    registration r ON e.eventID = r.eventID
GROUP BY 
    e.title, r.status
ORDER BY 
    e.title;


SELECT userID FROM registration
UNION ALL
SELECT userID FROM event_organizers;

