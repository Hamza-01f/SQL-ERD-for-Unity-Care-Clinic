-- Exercise 1: Insert a new patient
USE HospitalManagement;

INSERT INTO patients (first_name, last_name, gender, date_of_birth, phone_number, email, address) 
VALUES ('Alex', 'Johnson', 'Male', '1990-07-25', '1234567890', 'alex.johnson@example.com', '1234 Elm Street');

-- Exercise 2: Retrieve all departments with their locations
USE HospitalManagement;

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

-- Exercise 7: Retrieve doctors in specific departments (Cardiology and Neurology)
USE HospitalManagement;

SELECT * FROM doctors
WHERE department_id IN (
    SELECT department_id FROM departments WHERE department_name IN ('Cardiology', 'Neurology')
);

-- Exercise 8: Retrieve admissions between December 1, 2024, and December 7, 2024
USE HospitalManagement;

SELECT * FROM admissions
WHERE admission_date BETWEEN '2024-12-01' AND '2024-12-07';

-- Exercise 9: Add a column categorizing patients by age: "Child", "Adult", "Senior"
USE HospitalManagement;

ALTER TABLE patients
ADD COLUMN age_category ENUM('Child', 'Adult', 'Senior');

UPDATE patients
SET age_category = CASE
    WHEN TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) < 18 THEN 'Child'
    WHEN TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) BETWEEN 18 AND 65 THEN 'Adult'
    ELSE 'Senior'
END;

-- Exercise 10: Count the total number of appointments
USE HospitalManagement;

SELECT COUNT(*) AS total_appointments FROM appointments;

-- Exercise 11: Count the number of doctors per department
USE HospitalManagement;

SELECT department_id, COUNT(*) AS number_of_doctors
FROM doctors
GROUP BY department_id;

-- Exercise 12: Calculate the average age of patients
USE HospitalManagement;

SELECT AVG(TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE())) AS average_age FROM patients;

-- Exercise 13: Find the date and time of the latest appointment
USE HospitalManagement;

SELECT MAX(appointment_date) AS latest_appointment_date, MAX(appointment_time) AS latest_appointment_time
FROM appointments;

-- Exercise 14: Calculate the total number of admissions per room
USE HospitalManagement;

SELECT room_id, COUNT(*) AS total_admissions
FROM admissions
GROUP BY room_id;

-- Exercise 15: Retrieve patients with no email address
USE HospitalManagement;

SELECT * FROM patients
WHERE email IS NULL OR email = '';

-- Exercise 16: List appointments with doctor and patient names
USE HospitalManagement;

SELECT a.appointment_id, a.appointment_date, a.appointment_time, d.first_name AS doctor_first_name, d.last_name AS doctor_last_name, p.first_name AS patient_first_name, p.last_name AS patient_last_name
FROM appointments a
JOIN doctors d ON a.doctor_id = d.doctor_id
JOIN patients p ON a.patient_id = p.patient_id;

-- Exercise 17: Delete appointments scheduled before 2024
USE HospitalManagement;

DELETE FROM appointments
WHERE appointment_date < '2024-01-01';

-- Exercise 18: Update the department name "Oncology" to "Cancer Treatment"
USE HospitalManagement;

UPDATE departments
SET department_name = 'Cancer Treatment'
WHERE department_name = 'Oncology';

-- Exercise 19: List genders that have at least two patients
USE HospitalManagement;

SELECT gender, COUNT(*) AS patient_count
FROM patients
GROUP BY gender
HAVING COUNT(*) >= 2;

-- Exercise 20: Create a view for active admissions (admissions without discharge date)
USE HospitalManagement;

CREATE VIEW active_admissions AS
SELECT a.admission_id, a.patient_id, a.room_id, a.admission_date
FROM admissions a
WHERE a.discharge_date IS NULL;
