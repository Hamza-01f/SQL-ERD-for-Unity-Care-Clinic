create database HospitalManagament;

use HospitalManagament;

--patients table,
create table patients(
     patient_id int(11) ZEROFILL primary key,
     first_name varchar(50),
     last_name varchar(50),
     gender enum('Male','Female','Other'),
     date_of_birth date ,
     phone_number varchar(15),
     email varchar(100),
     addres varchar(255)
);

--description table,
create table prescriptions(
     perscription_id int(11) ZEROFILL primary key auto increment,
     patient_id int(11)  ZEROFILL,
     doctor_id int(11)  ZEROFILL,
     medication_id int(11)  ZEROFILL,
     prescription_date date ,
     dosage_instructions varchar(255),
     foreign key(patient_id) references patients(patient_id),
     foreign key(doctor_id) references doctors(doctor_id),
     foreign key(medication_id) references medications(medication_id)
);

--addmission table,
create table admissions(
     admission_id int(11) ZEROFILL primary key,
     patient_id int(11) ZEROFILL,
     room_id int(11) ZEROFILL,
     admission_date date,
     discharge_date date,
     foreign key(patient_id) references patients(patient_id),
     foreign key(room_id) references rooms(room_id),
);

--appointement table,
create table appointments(
     appointment_id int(11) ZEROFILL primary key,
     appointement_date date ,
     appointement_time time,
     doctor_id int(11) ZEROFILL,
     patient_id int(11) ZEROFILL,
     reason varchar(255),
     foreign key(doctor_id) references doctors(doctor_id),
     foreign key(patient_id) references patients(patient_id),
);

--medications table,
create table medications(
     medication_id int(11) ZEROFILL primary key,
     medication_name varchar(100),
     dosage varchar(50),
     
);


--rooms table,
create table rooms(
     room_id int(11) ZEROFILL primary key,
     room_number varchar(10),
     medication_name varchar(100),
     room_type enum('General','Private','ICU'),
     availability tinyint(1),
);


--doctors table,
create table doctors(
     doctor_id int(11) ZEROFILL primary key,
     first_name varchar(50),
     last_name varchar(50),
     specialization varchar(50),
     phone_number varchar(15),
     email varchar(100),
     departement_id int(11)  ZEROFILL,
     foreign key(departement_id) references departements(departement_id),
);

--departements table,
create table departements(
     departement_id int(11) ZEROFILL primary key,
     department_name varchar(50),
     location varchar(100),
);

--staff table
create table staff(
     staff_id int(11) ZEROFILL primary key,
     first_name varchar(50),
     last_name varchar(50),
     job_title varchar(50),
     phone_number varchar(15),
     email varchar(100),
     addres varchar(255),
     departement_id int(11) ZEROFILL,
     foreign key(departement_id) references departements(departement_id),
);