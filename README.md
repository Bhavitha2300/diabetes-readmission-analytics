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

| Tool | Purpose |
|------|---------|
| **Python** | Data cleaning, feature engineering, and loading to MySQL |
| **MySQL** | Structured querying and healthcare analysis |
| **Tableau Public** | Interactive dashboards for readmission insights |
| **GitHub** | Version control and documentation |

---

## Project Structure

diabetes-readmission-analytics/
├── data/                  # Raw and cleaned CSV files
├── sql/                   # SQL scripts for analysis
├── notebooks/             # Jupyter notebooks (EDA, modeling)
├── models/                # Trained ML models
├── streamlit_app/         # Streamlit app for prediction
├── screenshots/           # Images of Tableau visualizations (used instead of dashboard)
├── docker/                # Docker setup 
├── load_csv_to_mysql.py   # Script to load CSV into MySQL
├── README.md              # Project documentation
└── .gitignore

---

## Key Features & Analysis

- **Readmission Analysis**:
  - Breakdown of patients readmitted within 30 days, after 30 days, or not at all
  - Analysis by gender, age, race, and admission type

- **Hospital Metrics**:
  - Average length of stay
  - Top diagnoses and medications
  - Trends in discharge disposition and insurance types

- **Interactive Tableau Dashboard**:
  - Filters for demographic and clinical variables
  - Visual insights into patient outcomes

---

## Tableau Dashboard

[Explore the Interactive Dashboard on Tableau Public](https://public.tableau.com/app/profile/bhavitha.asam6391/viz/DiabetesReadmissionDashboard/Dashboard1)

Includes:
- Readmission Breakdown by Category
- Readmission by Gender
- Average Length of Stay by Age Group

---

## Visualizations

Due to Tableau Public limitations with data extracts, the dashboard was documented using screenshots.

All Tableau visualizations are included in the `screenshots/` folder:
- `readmission_breakdown.png` – Readmission categories
- `readmission_by_gender.png` – Gender-wise breakdown
- `average_stay_by_age.png` – Avg. hospital stay by age group
- `readmission_by_age_and_gender.png` – Combined analysis by age and gender
- `insulin_vs_readmission.png` – Impact of insulin levels
- `top10_diagnoses_diag1.png` – Top primary diagnoses (Diag 1)
- `top10_diagnoses_diag2.png` – Top primary diagnoses (Diag 2)
- `top10_diagnoses_diag3.png` – Top primary diagnoses (Diag 3)

These images represent Tableau dashboards and can be reused in reports, the Streamlit app, or presentations.

## References

- [Diabetes 130 US hospitals dataset](https://www.kaggle.com/datasets/whenamancodes/diabetes-prediction-dataset) on Kaggle
