-- Find patients with multiple conditions (e.g., specific diag_1, diag_2, and diag_3 combinations).
SELECT patient_nbr FROM diabetic_data WHERE diag_1 <> diag_2 AND diag_2 <> diag_3 AND diag_1<> diag_3;

-- Calculate the percentage of patients readmitted within 30 days vs. after 30 days vs. no readmission.
SELECT readmitted, COUNT(*) *100.0/ (SELECT COUNT(*) FROM diabetic_data) AS percent_of_readmissions FROM diabetic_data GROUP BY readmitted;

-- Identify the top diagnoses (from diag_1, diag_2, and diag_3) that contribute to readmissions.
SELECT diagnosis, COUNT(*) AS total_readmissions FROM ( SELECT diag_1 AS diagnosis FROM diabetic_data WHERE readmitted <> 'NO' UNION ALL SELECT diag_2 FROM diabetic_data WHERE readmitted <> 'NO' UNION ALL SELECT diag_3 FROM diabetic_data WHERE readmitted <> 'NO') AS combined_diagnoses GROUP BY diagnosis ORDER BY total_readmissions DESC LIMIT 10;

