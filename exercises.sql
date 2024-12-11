-- 1. CRUD Operations exercise: 
SELECT * FROM patients;
-- 2. SELECT Statement exercise:
SELECT * FROM departments;

-- 3. ORDER BY Clause exercise: 
SELECT * FROM patients
ORDER BY date_of_birth ASC;

-- 4. Filtrer by DISTINCT exercise:
SELECT DISTINCT gender FROM patients;

-- 5. LIMIT Clause exercise: 
SELECT * FROM doctors
LIMIT 3;

-- 6. WHERE Clause exercise: 
SELECT * FROM patients
WHERE date_of_birth > '2000-01-01';

-- 7. Logical Operators exercise: 
SELECT * FROM doctors
WHERE department_id IN (SELECT department_id FROM departments WHERE department_name IN ('Cardiology', 'Neurology'));

-- 8. Special Operators exercise:
SELECT * FROM admissions
WHERE admission_date BETWEEN '2024-12-01' AND '2024-12-07';

-- 9. Conditional Expressions exercise:
SELECT first_name, last_name, 
    CASE
        WHEN TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) < 18 THEN 'Enfant'
        WHEN TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) BETWEEN 18 AND 64 THEN 'Adulte'
        ELSE 'Senior'
    END AS age_category
FROM patients;

-- 10. Aggregate Functions exercise:
SELECT COUNT(*) AS total_appointments FROM appointments;

-- 11. COUNT avec GROUP BY exercise:
SELECT department_id, COUNT(*) AS total_doctors
FROM doctors
GROUP BY department_id;

-- 12. AVG exercise: 
SELECT AVG(TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE())) AS average_age FROM patients;

-- 13. MAX exercise: 
SELECT MAX(appointment_date) AS last_appointment_date, MAX(appointment_time) AS last_appointment_time
FROM appointments;

-- 14. SUM exercise:
SELECT room_id, COUNT(*) AS total_admissions
FROM admissions
GROUP BY room_id;

-- 15. Constraints exercise: 
SELECT * FROM patients
WHERE email IS NULL OR email = '';

-- 16. Join exercise:
SELECT a.appointment_date, a.appointment_time, p.first_name AS patient_first_name, p.last_name AS patient_last_name, 
       d.first_name AS doctor_first_name, d.last_name AS doctor_last_name
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
JOIN doctors d ON a.doctor_id = d.doctor_id;

-- 17. DELETE exercise: 
DELETE FROM appointments
WHERE appointment_date < '2024-01-01';
-- 18. UPDATE exercise:
UPDATE departments
SET department_name = 'Cancer Treatment'
WHERE department_name = 'Oncology';

-- 19. HAVING Clause exercise: 
SELECT gender , COUNT(gender) AS patient_count
FROM patients
GROUP BY gender
HAVING COUNT(*) >= 2;

-- 20. Create a view exercise: 
CREATE VIEW active_admissions AS
SELECT * FROM admissions
WHERE discharge_date IS NULL;
