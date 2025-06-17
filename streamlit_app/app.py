import streamlit as st
import pandas as pd
import plotly.express as px

# Load data
df = pd.read_csv("../data/diabetic_data_cleaned.csv")

# Sidebar Filters
st.sidebar.title("Filter Patients")
age_group = st.sidebar.selectbox("Select Age Group", sorted(df['age'].unique()))
gender = st.sidebar.multiselect("Select Gender", df['gender'].unique())

# Filter dataset
filtered = df[df['age'] == age_group]
if gender:
    filtered = filtered[filtered['gender'].isin(gender)]

# Page Title
st.title("Diabetes Readmission Risk Dashboard")
st.markdown("An interactive tool to explore diabetic patient readmissions.")

# Snapshot
st.subheader("Sample Patient Data")
st.dataframe(filtered.head(10), use_container_width=True)

# Readmission Breakdown
st.subheader(f"Readmission Breakdown (Age: {age_group}, Gender: {', '.join(gender) if gender else 'All'})")
readmit_counts = filtered['readmitted'].value_counts().reset_index()
readmit_counts.columns = ['Readmission', 'Count']
fig_readmit = px.bar(readmit_counts, x='Readmission', y='Count', color='Readmission',
                     title="Readmission Count", template='plotly_white')
st.plotly_chart(fig_readmit, use_container_width=True)

# Average Time in Hospital
st.subheader("Average Time in Hospital")
avg_time = round(filtered['time_in_hospital'].mean(), 2)
st.metric(label="Average Days", value=avg_time)

# Top Primary Diagnoses
st.subheader("Top 10 Primary Diagnoses (Diag 1)")
top_diag = filtered['diag_1'].value_counts().head(10).reset_index()
top_diag.columns = ['Diagnosis', 'Count']
fig_diag = px.bar(top_diag, x='Diagnosis', y='Count', color='Count',
                  title="Top Diagnoses", template='plotly_white')
st.plotly_chart(fig_diag, use_container_width=True)

# Footer
st.markdown("---")
st.markdown("**Data Source:** [Diabetes 130 US Hospitals Dataset (Kaggle)](https://www.kaggle.com/datasets/whenamancodes/diabetes-prediction-dataset)")
st.markdown("Built with Streamlit | [GitHub](https://github.com/Bhavitha2300)")
