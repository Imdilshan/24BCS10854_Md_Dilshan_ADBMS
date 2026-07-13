--Complete the queries below to insert data into the tables & retrieving the first records from the first 3 tables.

-- Inserting Data into Doctors Table
INSERT INTO _______ (DoctorID, Name, Specialization, ContactNumber, Email) VALUES
(1, 'Dr. John Smith', '_______', '1234567890', 'john.smith@hospital.com'),
(2, 'Dr. Lisa Brown', '_________', '0987654321', 'lisa.brown@hospital.com');

-- Inserting Data into Patients Table
INSERT INTO Patients (PatientID, Name, DOB, Gender, ContactNumber, ______) VALUES
(1, 'Alice Johnson', '1990-05-21', 'Female', '1112223333', '123 Main St'),
(2, 'Bob Martin', '1985-08-14', '_____', '4445556666', '456 Elm St');

-- Inserting Data into Appointments Table
INSERT INTO Appointments (AppointmentID, PatientID, DoctorID, AppointmentDate, _____) VALUES
(1, 1, 1, '2025-02-15', '_________'),
(2, 2, 2, '2025-02-16', 'Completed');

-- Inserting Data into Treatments Table
INSERT INTO Treatments (TreatmentID, PatientID, DoctorID, Diagnosis, TreatmentDescription, TreatmentDate) VALUES
(___, ___, ___, 'Hypertension', 'Prescribed medication', '2025-02-15'),
(2, 2, 2, 'Migraine', 'MRI Scan and medications', '2025-02-16');

-- Inserting Data into MedicalRecords Table
INSERT INTO MedicalRecords (_____, PatientID, TreatmentID, Notes) VALUES
(1, 1, 1, 'Patient responding well to treatment'),
(2, 2, 2, 'Further evaluation required');

-- Inserting Data into Billing Table
INSERT INTO _______ (BillID, PatientID, TreatmentID, Amount, BillDate, Status) VALUES
(1, 1, 1, 200.00, '2025-02-15', 'Paid'),
(2, 2, 2, 500.00, '2025-02-16', 'Unpaid');

--Now write the queries for retrieving the first records from the first three tables (Doctors, Patients, Appointments).
