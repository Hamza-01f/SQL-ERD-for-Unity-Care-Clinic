INSERT INTO patients ( first_name, last_name, gender, date_of_birth, phone_number, email, address) 
VALUES 
('Sophia', 'Williams', 'Female', '2014-03-14', '2345678901', 'sophia.williams@example.com', '5678 Oak Avenue'),
('James', 'Brown', 'Male', '1992-11-02', '3456789012', 'james.brown@example.com', '9101 Pine Road'),
('Olivia', 'Taylor', 'Female', '2000-06-19', '4567890123', 'olivia.taylor@example.com', '1122 Maple Lane'),
('William', 'Miller', 'Male', '1988-09-08', '5678901234', 'william.miller@example.com', '3344 Birch Street'),
('Isabella', 'Garcia', 'Female', '1995-01-12', '6789012345', 'isabella.garcia@example.com', '5566 Cedar Blvd'),
('Liam', 'Martinez', 'Male', '2001-12-25', '7890123456', 'liam.martinez@example.com', '7788 Willow Drive'),
('Emma', 'Davis', 'Female', '1998-04-27', '8901234567', 'emma.davis@example.com', '9900 Redwood Crescent'),
('Noah', 'Hernandez', 'Male', '1993-08-30', '9012345678', 'noah.hernandez@example.com', '2233 Spruce Road');
-- Insert data into the Department table
INSERT INTO departments (department_name, location)
VALUES
('Cardiology', 'Building A, 2nd Floor'),
('Neurology', 'Building B, 3rd Floor'),
('Orthopedics', 'Building C, 1st Floor');

-- Insert data into the Medications table
INSERT INTO medications (medication_name, dosage) 
VALUES 
('Paracetamol', '500mg'),
('Ibuprofen', '200mg'),
('Amoxicillin', '250mg'),
('Aspirin', '100mg'),
('Metformin', '500mg'),
('Lisinopril', '10mg'),
('Hydrochlorothiazide', '25mg'),
('Omeprazole', '20mg');

-- Insert data into the Rooms table
INSERT INTO rooms (room_number, room_type, availability) 
VALUES 
('101', 'General', 1),
('102', 'Private', 0),
('103', 'ICU', 1),
('104', 'General', 1),
('105', 'Private', 0),
('106', 'ICU', 1),
('107', 'General', 1),
('108', 'Private', 0);

-- Insert data into the Doctors table
INSERT INTO doctors (first_name, last_name, specialization, phone_number, email, department_id) 
VALUES 
('Dr. John', 'Smith', 'Cardiology', '1234567890', 'john.smith@example.com', 1),
('Dr. Emily', 'Johnson', 'Neurology', '2345678901', 'emily.johnson@example.com', 2),
('Dr. Michael', 'Lee', 'Pediatrics', '3456789012', 'michael.lee@example.com', 3),
('Dr. Sarah', 'Brown', 'Orthopedics', '4567890123', 'sarah.brown@example.com', 1),
('Dr. David', 'Martinez', 'General Medicine', '5678901234', 'david.martinez@example.com', 1),
('Dr. Linda', 'Davis', 'Dermatology', '6789012345', 'linda.davis@example.com', 2),
('Dr. James', 'Garcia', 'Gynecology', '7890123456', 'james.garcia@example.com', 3),
('Dr. Patricia', 'Wilson', 'ENT', '8901234567', 'patricia.wilson@example.com', 3);

-- Insert data into the Prescriptions table
INSERT INTO prescriptions (patient_id, doctor_id, medication_id, prescription_date, dosage_instructions)
VALUES 
(1, 1, 1, '2024-12-01', 'Take one tablet every 6 hours'),
(2, 2, 2, '2024-12-02', 'Take one tablet twice a day'),
(3, 3, 3, '2024-12-03', 'Take one capsule in the morning and evening'),
(4, 4, 4, '2024-12-04', 'Take one tablet daily'),
(5, 5, 5, '2024-12-05', 'Take one tablet in the morning with food'),
(6, 6, 6, '2024-12-06', 'Take one tablet once a day'),
(7, 7, 7, '2024-12-07', 'Take one tablet every morning'),
(8, 8, 8, '2024-12-08', 'Take one capsule before breakfast');

-- Insert data into the Admissions table
INSERT INTO admissions (patient_id, room_id, admission_date, discharge_date)
VALUES 
(1, 1, '2024-12-01', '2024-12-05'),
(2, 2, '2024-12-02', '2024-12-06'),
(3, 3, '2024-12-03', '2024-12-07'),
(4, 4, '2024-12-04', '2024-12-08'),
(5, 5, '2024-12-05', '2024-12-09'),
(6, 6, '2024-12-06', '2024-12-10'),
(7, 7, '2024-12-07', '2024-12-11'),
(8, 8, '2024-12-08', '2024-12-12');

-- Insert data into the Appointments table
INSERT INTO appointments (appointment_date, appointment_time, doctor_id, patient_id, reason) 
VALUES 
('2024-12-01', '10:00:00', 1, 1, 'Routine checkup'),
('2024-12-02', '11:00:00', 2, 2, 'Headache'),
('2024-12-03', '14:00:00', 3, 3, 'Vaccination'),
('2024-12-04', '09:30:00', 4, 4, 'Joint pain'),
('2024-12-05', '15:00:00', 5, 5, 'Blood pressure check'),
('2024-12-06', '16:00:00', 6, 6, 'Skin rash'),
('2024-12-07', '13:00:00', 7, 7, 'Routine checkup'),
('2024-12-08', '10:30:00', 8, 8, 'Throat infection');

-- Insert data into the Staff table
INSERT INTO staff (first_name, last_name, job_title, phone_number, email, address, department_id) 
VALUES 
('Anna', 'Smith', 'Nurse', '1234567890', 'anna.smith@hospital.com', '123 Main St', 1),
('Mark', 'Jones', 'Receptionist', '2345678901', 'mark.jones@hospital.com', '456 Elm St', 2),
('Sophie', 'Taylor', 'Technician', '3456789012', 'sophie.taylor@hospital.com', '789 Oak St', 3),
('Peter', 'Anderson', 'Manager', '4567890123', 'peter.anderson@hospital.com', '101 Pine St', 1);
