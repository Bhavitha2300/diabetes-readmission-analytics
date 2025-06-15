# Diabetes Readmission Analytics

An end-to-end healthcare data analytics project analyzing diabetic patient admissions and readmissions. This project uses real hospital data to uncover clinical and operational insights, and builds the foundation for predictive modeling of readmission risk.

---

## Problem Statement

Hospital readmissions are costly and often preventable. Identifying high-risk diabetic patients enables healthcare providers to take proactive measures to reduce readmissions, improve outcomes, and lower costs.

---

## Use Cases

- **Clinicians**: Flag patients likely to be readmitted for better follow-up care  
- **Hospital Admins**: Analyze demographics and diagnosis patterns to reduce penalties  
- **Payers/Insurers**: Identify cost drivers and understand readmission trends  
- **Health Informatics Analysts**: Leverage real-world data to guide interventions  

---

## Tools Used

| Tool             | Purpose                                           |
|------------------|---------------------------------------------------|
| **Python**        | Data cleaning, feature engineering, MySQL loading |
| **MySQL**         | Structured querying and healthcare analysis       |
| **Tableau Public**| Interactive dashboards for readmission insights  |
| **GitHub**        | Version control and documentation                 |

---

## Project Structure

diabetes-readmission-analytics/
├── data/ # Raw and cleaned CSV files
├── sql/ # SQL scripts for analysis
├── notebooks/ # Jupyter notebooks (EDA, modeling)
├── models/ # Trained ML models (coming)
├── streamlit_app/ # Streamlit app for prediction (coming)
├── dashboard/ # Tableau dashboard files (.twbx)
├── screenshots/ # Images for README & demo
├── docker/ # Docker setup (coming)
├── load_csv_to_mysql.py # Script to load CSV into MySQL
├── README.md # Project documentation
└── .gitignore


---

## Key Features & Analysis

- **Readmission Analysis**:
  - Breakdown of patients readmitted within 30 days, after 30 days, or not at all
  - Demographic analysis by gender, age, race, and admission type

- **Hospital Metrics**:
  - Average length of stay across age groups
  - Top diagnoses and medication categories
  - Discharge disposition patterns and insulin impact

- **Visualization Tools**:
  - Tableau dashboards for high-level storytelling
  - Snapshot images for embedding in notebooks or apps

---

## Interactive Tableau Dashboards

Explore live dashboards on **Tableau Public**:

- [Diabetes Readmission Dashboard](https://public.tableau.com/app/profile/bhavitha.asam6391/viz/DiabetesReadmissionDashboard/Dashboard1)
- [Diabetes Readmission Overview](https://public.tableau.com/app/profile/bhavitha.asam6391/viz/Diabetesreadmissionoverview/Dashboard1)

---

## Visualizations (Screenshots)

If using Tableau Public prevents extract creation, dashboards are still accessible visually.

All relevant visualizations are included in the `screenshots/` folder:

- `readmission_breakdown.png` – Readmission categories
- `readmission_by_gender.png` – Gender-wise breakdown
- `average_stay_by_age.png` – Avg. hospital stay by age group
- `readmission_by_age_and_gender.png` – Combined age-gender analysis
- `insulin_vs_readmission.png` – Effect of insulin levels
- `top10_diagnoses_diag1.png` – Top diagnoses (Diag 1)
- `top10_diagnoses_diag2.png` – Top diagnoses (Diag 2)
- `top10_diagnoses_diag3.png` – Top diagnoses (Diag 3)

These screenshots are used in reports, README, or the Streamlit app.

---

## References

- [Diabetes 130 US Hospitals Dataset (Kaggle)](https://www.kaggle.com/datasets/whenamancodes/diabetes-prediction-dataset)

