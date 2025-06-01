USE diabetes_project;

SHOW TABLES;

DESCRIBE diabetic_data;

SELECT COUNT(*) FROM diabetic_data;

SELECT encounter_id, COUNT(*) FROM diabetic_data GROUP BY encounter_id HAVING COUNT(*) > 1;

SELECT COUNT(*) FROM diabetic_data WHERE encounter_id IS NULL;

SELECT * FROM diabetic_data LIMIT 10;

-- checking Total number of rows by each readmitted value
SELECT readmitted, COUNT(*) AS total_rows
FROM diabetic_data
GROUP BY readmitted;

-- Count the total number of unique patients
SELECT COUNT(DISTINCT patient_nbr) AS unique_patients FROM diabetic_data; 

-- Count the total number of readmissions where readmitted = '<30'.
SELECT COUNT(*) AS total_readmitted_less_than_thirty_days FROM diabetic_data WHERE readmitted = '<30';

-- Count the total number of non-readmissions where readmitted = 'NO'.
SELECT COUNT(*) AS total_non_readmissions FROM diabetic_data WHERE readmitted = 'NO';

-- Count the number of admissions by each race (group by race).
SELECT race, COUNT(*) AS total_admissions_by_race FROM diabetic_data GROUP BY race;

-- Count the number of admissions by each gender (group by gender). 
SELECT gender, COUNT(*) AS total_admissions_by_gender FROM diabetic_data GROUP BY gender;

-- Count the number of admissions by each age group (group by age).
SELECT age, COUNT(*) AS total_admissions_by_age FROM diabetic_data GROUP BY age;

-- Calculate the average length of hospital stay (time_in_hospital).
SELECT AVG(time_in_hospital) AS average_length_of_hospital_stay FROM diabetic_data;

-- Find the top 3 admission types with the highest number of admissions (admission_type_id).
SELECT admission_type_id, COUNT(*) AS total_admissions_by_type FROM diabetic_data GROUP BY admission_type_id ORDER BY total_admissions_by_type DESC LIMIT 3;

-- Find the top 3 discharge dispositions with the highest counts (discharge_disposition_id).
SELECT discharge_disposition_id, COUNT(*) AS total_admissions_by_discharge_disposition  
FROM diabetic_data  
GROUP BY discharge_disposition_id  
ORDER BY total_admissions_by_discharge_disposition DESC  
LIMIT 3;

