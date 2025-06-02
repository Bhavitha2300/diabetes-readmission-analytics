--  Find the count of patients whose race is 'AfricanAmerican'.
SELECT COUNT(*) AS total_patients_AfricanAmerican FROM diabetic_data WHERE race = 'AfricanAmerican';

-- Find the count of female patients admitted from admission_source_id=7.
SELECT COUNT(*) AS total_female_patients_from_admission_source_id_7 FROM diabetic_data WHERE gender = 'female' AND admission_source_id = 7;

-- Find the count of patients discharged to discharge_disposition_id=1.
SELECT COUNT(*) AS total_patients_from_discharge_disposition_id_1 FROM diabetic_data WHERE discharge_disposition_id = 1;

-- List age groups by the number of admissions from highest to lowest.
SELECT age, COUNT(*) AS total_admissions_by_age FROM diabetic_data GROUP BY age ORDER BY total_admissions_by_age DESC; 

-- List gender groups by average time_in_hospital, from highest to lowest.
SELECT gender, AVG(time_in_hospital) AS average_time_in_hospital_by_gender FROM diabetic_data GROUP BY gender ORDER BY average_time_in_hospital_by_gender DESC;

-- Calculate the percentage of total admissions where readmitted = '<30'.
SELECT ( (SELECT COUNT(*) FROM diabetic_data WHERE readmitted = '<30') * 100.0/ (SELECT COUNT(*) FROM diabetic_data)) AS percentage_of_total_admissions_with_readmissions_within_thirty_days;

-- Calculate the percentage of total admissions for each race group.
SELECT race, COUNT(*) * 100.0/ (SELECT COUNT(*) FROM diabetic_data) AS percent_of_admissions_for_each_race FROM diabetic_data GROUP BY race;

-- Count the number of patients aged 70–80 who were readmitted ('<30').
SELECT COUNT(*) AS number_of_patients_aged_70_80_readmitted_less_than_thirty_days FROM diabetic_data WHERE age = '[70-80)' AND readmitted = '<30';

-- Count how many patients had weight = '?' (missing weight).
SELECT COUNT(*) AS total_patients_with_missing_weight FROM diabetic_data WHERE weight = '?';

-- Find the maximum, minimum, and average number of medications (num_medications) per admission.
SELECT MAX(num_medications) AS max_medications, MIN(num_medications) AS min_medications, AVG(num_medications) AS avg_num_medications FROM diabetic_data;

-- List the top 5 medical specialties by total number of admissions.
SELECT medical_specialty, COUNT(*) AS total_admissions_by_speciality FROM diabetic_data GROUP BY medical_specialty ORDER BY total_admissions_by_speciality DESC LIMIT 5;

-- Calculate the total number of admissions where payer_code is 'MC' (Medicare).
SELECT COUNT(*) AS total_admissions_with_medicare FROM diabetic_data WHERE payer_code = 'MC';

-- Find the percentage of patients with missing weight (where weight = '?') out of total admissions.
SELECT ( (SELECT COUNT(*) FROM diabetic_data WHERE weight = '?') * 100.0/ (SELECT COUNT(*) FROM diabetic_data)) AS percent_of_admissions_with_missing_weight;

-- List the number of admissions by payer_code in descending order.
SELECT payer_code, COUNT(*) AS total_admissions_by_payer_code FROM diabetic_data GROUP BY payer_code ORDER BY total_admissions_by_payer_code  DESC;

-- Calculate the total number of distinct diag_1 codes (primary diagnoses).
SELECT COUNT(DISTINCT diag_1) AS total_num_of_diag_1_codes FROM diabetic_data;

-- Count how many patients had an a1cresult of '>8'.
SELECT COUNT(*) AS patients_with_a1cresult_more_8 FROM diabetic_data WHERE A1cresult = '>8';

-- Find the average time_in_hospital for each discharge_disposition_id.
SELECT discharge_disposition_id, AVG(time_in_hospital) AS average_time_in_hospital FROM diabetic_data GROUP BY discharge_disposition_id;

-- Identify the age group with the highest average num_medications.
SELECT age, AVG(num_medications) AS avg_num_medications FROM diabetic_data GROUP BY age ORDER BY avg_num_medications DESC LIMIT 1;

-- List the number of patients who received 'Steady' insulin treatment.
SELECT COUNT(*) AS number_of_patients_with_insulin_steady_treatment FROM diabetic_data WHERE insulin = 'Steady';