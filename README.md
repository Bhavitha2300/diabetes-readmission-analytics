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
| **Streamlit**     | Interactive web app for patient-level insights    |
| **GitHub**        | Version control and documentation                 |

---

## Project Structure

diabetes-readmission-analytics/
├── data/ # Raw and cleaned CSV files
├── sql/ # SQL scripts for analysis
├── notebooks/ # Jupyter notebooks (EDA, modeling)
├── models/ # Trained ML models (coming)
├── streamlit_app/ # Streamlit app for exploration
├── dashboard/ # Tableau dashboard files (.twbx)
├── screenshots/ # Images for README & demo
├── docker/ # Docker setup (coming)
├── load_csv_to_mysql.py # Script to load CSV into MySQL
├── README.md # Project documentation
└── .gitignore


---

## Key Features & Analysis

###  Readmission Analysis:
- Breakdown by time (`<30 days`, `>30 days`, `No Readmission`)
- Filters by **Age** and **Gender**
- Interactive visual insights powered by Plotly

###  Hospital Metrics:
- Average length of stay for selected groups
- Top diagnoses (Diag 1) for filtered patients

###  Visualization Tools:
- **Tableau** dashboards for high-level exploration
- **Streamlit** app for real-time drilldown

---

##  Live Demo (Streamlit App)

> Explore the interactive readmission risk dashboard built using Streamlit:
**[Launch App on Streamlit Cloud](https://share.streamlit.io/your-app-link)**  
_(Replace the link with your actual deployment URL)_

**Features:**
- Sidebar filters for Age Group & Gender
- Live bar charts for readmission categories
- Instant average time-in-hospital metric
- Dynamic top diagnoses visualization
- Clean UI with Plotly and container-width layout

---

##  Tableau Dashboards

Explore published dashboards for data storytelling:

- [Diabetes Readmission Dashboard](https://public.tableau.com/app/profile/bhavitha.asam6391/viz/DiabetesReadmissionDashboard/Dashboard1)
- [Diabetes Readmission Overview](https://public.tableau.com/app/profile/bhavitha.asam6391/viz/Diabetesreadmissionoverview/Dashboard1)

---

##  Visualizations (Screenshots)

Screenshots are available under the `screenshots/` directory for quick reference:

- `readmission_breakdown.png` – Readmission categories
- `readmission_by_gender.png` – Gender-wise breakdown
- `average_stay_by_age.png` – Avg. hospital stay by age group
- `readmission_by_age_and_gender.png` – Combined analysis
- `insulin_vs_readmission.png` – Impact of insulin levels
- `top10_diagnoses_diag1.png`, `diag2.png`, `diag3.png` – Diagnoses insights

---

##  Requirements

To run the Streamlit app locally:

```bash
pip install -r requirements.txt
streamlit run streamlit_app/app.py
