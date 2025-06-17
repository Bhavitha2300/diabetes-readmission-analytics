import streamlit as st
import pandas as pd

st.title("Diabetes Readmission Risk Dashboard")

# Load data
df = pd.read_csv("../data/diabetic_data_cleaned.csv")

# Show basic stats
st.write("### Data Snapshot", df.head())

# Add filters
age_group = st.selectbox("Select Age Group", df['age'].unique())
filtered = df[df['age'] == age_group]

st.write(f"### Readmission Breakdown for Age {age_group}")
st.write(filtered['readmitted'].value_counts())
