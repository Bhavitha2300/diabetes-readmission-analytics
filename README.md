# Hospital Admissions Dashboard 

A SQL + Power BI project analyzing diabetic patient admissions and readmissions.

##  Data Source
This project uses the [Diabetes 130 US hospitals for years 1999–2008 dataset](https://www.kaggle.com/datasets/brandao/diabetes) from Kaggle.  
The dataset contains hospital records of diabetic patients and includes readmission data, patient demographics, and hospital outcomes.

##  Features
- Analysis of readmission rates (within 30 days vs. no readmission)
- Average length of stay (LOS) by diagnosis and demographic factors
- Top diagnoses contributing to readmissions
- Dynamic filters: age, gender, race, admission type
- Data cleaning and loading into MySQL
- SQL queries for analysis
- Power BI dashboard for visual storytelling (coming soon)

##  Tools Used
- Python (for data preprocessing and loading)
- MySQL (for data storage and querying)
- Power BI (for dashboard creation)
- GitHub (for version control and project management)

##  Next Steps
- Add SQL scripts for deeper analysis (e.g., readmission risk scoring)
- Build Power BI visualizations to present insights
- Incorporate dynamic filtering (age group, race, gender)
- Export results to Tableau Public for broader sharing
- Implement a predictive model (Python) for readmission likelihood

##  Project Structure

diabetes-readmission-analytics/
├── data/ # Raw & cleaned data files
├── sql/ # SQL scripts (schema, cleaning, analysis)
├── dashboard/ # Power BI dashboard files
├── screenshots/ # Images of dashboard views
├── load_csv_to_mysql.py # Python script to load CSV into MySQL
├── README.md # Project documentation (this file)
└── .gitignore # Files and folders to ignore in Git

##  References
- [Diabetes 130 US hospitals for years 1999–2008 dataset on Kaggle](https://www.kaggle.com/datasets/brandao/diabetes)

