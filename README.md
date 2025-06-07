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
├── data/ # Raw and cleaned CSV files
├── sql/ # SQL scripts for analysis
├── notebooks/ # Jupyter notebooks (EDA, modeling)
├── models/ # Trained ML models (coming)
├── streamlit_app/ # Streamlit app for prediction (coming)
├── dashboard/ # Tableau dashboard files
├── screenshots/ # Images for README & demo
├── docker/ # Docker setup (coming)
├── load_csv_to_mysql.py # Script to load CSV into MySQL
├── README.md # Project documentation
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

## Next Steps

- [ ] Build a machine learning model to predict 30-day readmission risk
- [ ] Develop a Streamlit app for interactive prediction
- [ ] Dockerize the data pipeline for reproducibility
- [ ] Automate workflows using GitHub Actions
- [x] Clean and analyze healthcare data with Python and SQL
- [x] Design and publish Tableau dashboard

---

## References

- [Diabetes 130 US hospitals dataset](https://www.kaggle.com/datasets/whenamancodes/diabetes-prediction-dataset) on Kaggle
