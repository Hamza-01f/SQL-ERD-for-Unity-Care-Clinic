##Hospital Database Management System - SQL Exercises,

Table of Contents
Introduction
Database Schema
SQL Exercises
Task Descriptions
Instructions for Running Queries
Conclusion
Introduction
This README file provides a step-by-step guide for performing SQL exercises based on the design of a Hospital Database Management System. The system is designed to efficiently manage data related to departments, doctors, patients, rooms, admissions, appointments, medications, prescriptions, and administrative staff.

The goal of this exercise is to help you practice basic to advanced SQL queries while working with real-world data from a hospital management system.

Database Schema
The hospital database contains the following tables;

departments – Stores department information (e.g., name, location).
doctors – Contains information about doctors (e.g., name, department).
patients – Contains patient details (e.g., name, date of birth, gender, phone number, email).
rooms – Stores information about patient rooms.
admissions – Contains data about patient admissions (e.g., patient_id, room_id, admission_date, discharge_date).
appointments – Contains data related to patient appointments with doctors (e.g., patient_id, doctor_id, appointment_date).
medications – Stores details about medications (e.g., name, dosage, patient_id).
prescriptions – Contains prescriptions related to patients (e.g., doctor_id, medication_id, patient_id).
administrative_staff – Contains information about the hospital's administrative personnel.
SQL Exercises
The exercises listed below will help you practice common SQL tasks, from CRUD operations to aggregation, joins, and creating views.

Task Descriptions
1. CRUD Operations: Insert a New Patient
Objective: Insert a new patient named "Alex Johnson" into the patients table. The patient was born on July 15, 1990, is male, and has the phone number "1234567890".
2. SELECT Statement: Retrieve All Departments
Objective: Retrieve all departments with their locations from the departments table.
3. ORDER BY Clause: Sort Patients by Date of Birth
Objective: List all patients, sorted by their date of birth in ascending order.
4. DISTINCT Clause: Filter Unique Genders
Objective: Retrieve all unique genders recorded for patients, without duplicates.
5. LIMIT Clause: Get the First 3 Doctors
Objective: Retrieve the first 3 doctors from the doctors table.
6. WHERE Clause: Patients Born After 2000
Objective: Retrieve the information of all patients born after the year 2000.
7. Logical Operators: Doctors in Specific Departments
Objective: Retrieve the doctors from the "Cardiology" and "Neurology" departments.
8. Special Operators: Admissions Between Specific Dates
Objective: Retrieve the admissions that occurred between December 1, 2024, and December 7, 2024.
9. Conditional Expressions: Categorize Patients by Age
Objective: Add a new column that categorizes patients as "Child", "Adult", or "Senior" based on their age.
10. Aggregate Functions: Count Total Appointments
Objective: Count the total number of appointments in the appointments table.
11. COUNT with GROUP BY: Count Doctors by Department
Objective: Count the number of doctors in each department.
12. AVG: Calculate Average Age of Patients
Objective: Calculate the average age of all patients.
13. MAX: Find the Last Appointment
Objective: Retrieve the date and time of the last appointment in the system.
14. SUM: Total Admissions Per Room
Objective: Calculate the total number of admissions for each room.
15. Constraints: Find Patients Without Email
Objective: Retrieve all patients who do not have an email address.
16. JOIN: List Appointments with Doctor and Patient Names
Objective: Retrieve a list of appointments, including the names of both doctors and patients.
17. DELETE: Delete Appointments Before 2024
Objective: Delete all appointments that were scheduled before 2024.
18. UPDATE: Modify a Department Name
Objective: Change the name of the "Oncology" department to "Cancer Treatment".
19. HAVING Clause: Patients by Gender with at Least 2 Entries
Objective: List all genders that have at least 2 patients, using the HAVING clause.
20. Create a View: Active Admissions
Objective: Create a view that lists all active admissions.
Instructions for Running Queries
Setup the Database:

First, ensure that the database schema has been set up as per the hospital management system.
If you don’t already have the data, insert sample data into the tables for testing purposes.
Running the Queries:

Open your SQL client (e.g., MySQL Workbench, PostgreSQL, SQL Server Management Studio).
Copy and paste the queries from the exercises into your SQL client.
Execute the queries one by one to verify their correctness.
Verifying Results:

For each task, check the results to ensure they meet the requirements (e.g., proper data is returned, proper aggregation is applied, etc.).
If necessary, modify the queries to adjust for any issues or inconsistencies in the data.
Conclusion
This exercise covers a wide range of SQL topics, from basic CRUD operations to more advanced queries such as joins, aggregates, and conditional expressions. By completing these tasks, you will gain a deeper understanding of how to interact with a hospital management system database using SQL.

If you encounter any issues or need further clarification, feel free to refer to the SQL documentation for your specific database system.

Good luck!

This README file provides all the necessary information and guidance to successfully complete the SQL exercises for the hospital management system