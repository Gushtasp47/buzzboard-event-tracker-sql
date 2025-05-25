# BuzzBoard: University Event Tracker (SQL Backend)

**BuzzBoard** is a conceptual backend system designed to help university students stay updated on campus events including tech workshops, music nights, sports tournaments, and club meetups. This SQL-based backend supports structured event tracking, user registration, and participation analytics.

## Features

- Role-based user system: Students and Organizers
- Event scheduling and registration with deadlines
- Many-to-many mapping between events and organizers
- Queries for participation trends and event insights
- Views and stored procedures for cleaner access patterns

## Technologies

- SQL Server (T-SQL)
- SSMS or Azure Data Studio for management

## File Overview

| File | Description |
|------|-------------|
| `buzzboard_schema.sql` | Table creation and drop scripts |
| `buzzboard_seed_data.sql` | Sample data for testing |
| `buzzboard_queries.sql` | Complex queries for analytics |
| `buzzboard_views.sql` | Predefined SQL views |
| `buzzboard_procedures.sql` | Stored procedures for reusability |
| `buzzboard_results.md` | Summary of observations from query results |

## Sample Analytical Queries

- Count of events by month
- Top registered events
- Events with no participants
- Organizer contribution analysis
- Status-wise registration breakdown
- Upcoming events with open registration
- Users participating as both organizers and attendees

