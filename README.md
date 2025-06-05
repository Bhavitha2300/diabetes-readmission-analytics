# Hospital Admissions Dashboard

**A SQL + Tableau (and Power BI coming soon) project analyzing diabetic patient admissions and readmissions.**

## Data Source

This project uses the **[Diabetes 130 US hospitals for years 1999–2008](https://www.kaggle.com/datasets/whenamancodes/diabetes-prediction-dataset)** dataset from Kaggle.  
It contains hospital records of diabetic patients, including demographics, diagnoses, readmission outcomes, and length of stay.

## Features

- Analysis of readmission rates:  
  — Within 30 days vs. after 30 days vs. no readmission  
- Average length of stay by diagnosis and demographic factors  
- Top diagnoses contributing to readmissions  
- Interactive filters (age, gender, race, admission type)
- Data cleaning with Python & loading into MySQL
- SQL queries for healthcare insights
- Tableau dashboard for visual storytelling  
- Power BI version coming soon

## Tools Used

- **Python** – preprocessing & CSV → MySQL
- **MySQL** – data storage & analysis
- **Tableau Public** – data visualization & dashboard creation
- **Power BI** – *in progress*
- **GitHub** – version control

## Tableau Dashboard

Explore the interactive dashboard here:  
[**Diabetes Readmission Dashboard** on Tableau Public](https://public.tableau.com/app/profile/bhavitha.asam6391/viz/DiabetesReadmissionDashboard/Dashboard1)

Includes:
- Readmission Breakdown Bar Chart
- Readmission by Gender
- Average Hospital Stay by Age Group

## Project Structure

diabetes-readmission-analytics/
├── data/ # Raw & cleaned data files
├── sql/ # SQL scripts (schema, cleaning, analysis)
├── dashboard/ # Power BI or Tableau packaged files
├── screenshots/ # Images of dashboard views
├── load_csv_to_mysql.py# Script to load CSV into MySQL
├── README.md # This file
└── .gitignore

## Next Steps

- [ ] Add SQL scripts for deeper clinical analysis (e.g., risk scoring)
- [ ] Complete Power BI visualizations
- [x] Export and publish insights to Tableau Public
- [ ] Implement predictive modeling (Python): readmission likelihood
- [ ] Include Docker or Jupyter support (optional)

## References

- [Diabetes 130 US hospitals dataset](https://www.kaggle.com/datasets/brandao/diabetes) on Kaggle
