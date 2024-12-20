-- Create the database
CREATE DATABASE HospitalManagement;

-- Use the created database
USE HospitalManagement;

SET foreign_key_checks = 0;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS patients;
DROP TABLE IF EXISTS medications;
DROP TABLE IF EXISTS rooms;
DROP TABLE IF EXISTS doctors;
DROP TABLE IF EXISTS prescriptions;
DROP TABLE IF EXISTS admissions;
DROP TABLE IF EXISTS appointments;
DROP TABLE IF EXISTS staff;
DROP TABLE IF EXISTS active_admissions;
SET foreign_key_checks = 1;

-- Departments table
CREATE TABLE departments (
    department_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(50) NOT NULL,
    location VARCHAR(100) NOT NULL
);

-- Patients table

CREATE TABLE patients (
    patient_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    date_of_birth DATE NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    email VARCHAR(100) UNIQUE NULL,
    address VARCHAR(255) NOT NULL
);

-- Medications table

CREATE TABLE medications (
    medication_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    medication_name VARCHAR(100) NOT NULL,
    dosage VARCHAR(50) NOT NULL
);

-- Rooms table

CREATE TABLE rooms (
    room_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    room_number VARCHAR(10) NOT NULL,
    room_type ENUM('General', 'Private', 'ICU') NOT NULL,
    availability TINYINT(1) NOT NULL
);

-- Doctors table

CREATE TABLE doctors (
    doctor_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialization VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    email VARCHAR(100) UNIQUE,
    department_id INT(11) NOT NULL, 
    FOREIGN KEY(department_id) REFERENCES departments(department_id)
);

-- Prescriptions table

CREATE TABLE prescriptions (
    prescription_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    patient_id INT(11) NOT NULL,
    doctor_id INT(11) NOT NULL,
    medication_id INT(11) NOT NULL,
    prescription_date DATE NOT NULL,
    dosage_instructions VARCHAR(255),
    FOREIGN KEY(patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY(doctor_id) REFERENCES doctors(doctor_id),
    FOREIGN KEY(medication_id) REFERENCES medications(medication_id)
);

-- Admissions table

CREATE TABLE admissions (
    admission_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    patient_id INT(11) NOT NULL,
    room_id INT(11) NOT NULL,
    admission_date DATE NOT NULL,
    discharge_date DATE,
    FOREIGN KEY(patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY(room_id) REFERENCES rooms(room_id)
);

-- Appointments table

CREATE TABLE appointments (
    appointment_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    doctor_id INT(11) NOT NULL,
    patient_id INT(11) NOT NULL,
    reason VARCHAR(255) NOT NULL,
    FOREIGN KEY(doctor_id) REFERENCES doctors(doctor_id),
    FOREIGN KEY(patient_id) REFERENCES patients(patient_id)
);

-- Staff table

CREATE TABLE staff (
    staff_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    job_title VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    email VARCHAR(100) UNIQUE,
    address VARCHAR(255) NOT NULL,
    department_id INT(11),
    FOREIGN KEY(department_id) REFERENCES departments(department_id)
);
