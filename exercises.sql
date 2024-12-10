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


