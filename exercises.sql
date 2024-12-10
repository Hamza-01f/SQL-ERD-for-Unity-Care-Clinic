-- Exercise 1: Insert a new patient
USE HospitalManagement;

INSERT INTO patients (patient_id,first_name, last_name, gender, date_of_birth, phone_number, email, address) 
VALUES 
('Sophia', 'Williams', 'Female', '1985-03-14', '2345678901', 'sophia.williams@example.com', '5678 Oak Avenue'),
('James', 'Brown', 'Male', '1992-11-02', '3456789012', 'james.brown@example.com', '9101 Pine Road'),
('Olivia', 'Taylor', 'Female', '2000-06-19', '4567890123', 'olivia.taylor@example.com', '1122 Maple Lane'),
('William', 'Miller', 'Male', '1988-09-08', '5678901234', 'william.miller@example.com', '3344 Birch Street'),
('Isabella', 'Garcia', 'Female', '1995-01-12', '6789012345', 'isabella.garcia@example.com', '5566 Cedar Blvd'),
('Liam', 'Martinez', 'Male', '2001-12-25', '7890123456', 'liam.martinez@example.com', '7788 Willow Drive'),
('Emma', 'Davis', 'Female', '1998-04-27', '8901234567', 'emma.davis@example.com', '9900 Redwood Crescent'),
('Noah', 'Hernandez', 'Male', '1993-08-30', '9012345678', 'noah.hernandez@example.com', '2233 Spruce Road'),
('Ava', 'Lopez', 'Female', '2002-02-14', '0123456789', 'ava.lopez@example.com', '4455 Cherry Way');


SELECT * FROM patients;

-- Exercise 2: Retrieve all departments with their locations
USE HospitalManagement;

INSERT INTO departments (department_name, location)
VALUES
('Cardiology', 'Building A, 2nd Floor'),
('Neurology', 'Building B, 3rd Floor'),
('Orthopedics', 'Building C, 1st Floor');

SELECT * FROM departments;

-- Exercise 3: List all patients ordered by date of birth in ascending order
USE HospitalManagement;

SELECT * FROM patients
ORDER BY date_of_birth ASC;

-- Exercise 4: Retrieve unique genders of patients (DISTINCT)
USE HospitalManagement;

SELECT DISTINCT gender FROM patients;

-- Exercise 5: Retrieve the first 3 doctors
USE HospitalManagement;

SELECT * FROM doctors
LIMIT 3;

-- Exercise 6: Retrieve patients born after the year 2000
USE HospitalManagement;

SELECT * FROM patients
WHERE date_of_birth > '2000-01-01';
