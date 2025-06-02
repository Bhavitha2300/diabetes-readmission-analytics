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