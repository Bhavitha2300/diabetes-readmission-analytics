import pandas as pd
import mysql.connector

# Load CSV
df = pd.read_csv('/Users/bhavithaasam/Desktop/Projects/diabetes_sql_project/dataset and article/diabetic_data.csv')
df.columns = df.columns.str.strip().str.lower().str.replace(' ', '_').str.replace('[^a-zA-Z0-9_]', '')

# Inspect unique gender values and their lengths (debugging tip)
print(df['gender'].unique())

conn = mysql.connector.connect(
    host='localhost',
    user='root',
    password='baBBy@77007700',
    database='diabetes_project'
)

cursor = conn.cursor()

# Fix CREATE TABLE with correct column lengths
create_table_query = """
CREATE TABLE IF NOT EXISTS diabetic_data (
    encounter_id BIGINT,
    patient_nbr BIGINT,
    race VARCHAR(50),
    gender VARCHAR(20),  -- Increased length
    age VARCHAR(20),
    weight VARCHAR(20),
    admission_type_id INT,
    discharge_disposition_id INT,
    admission_source_id INT,
    time_in_hospital INT,
    readmitted VARCHAR(10)
);
"""
cursor.execute(create_table_query)

# Commit and close cursor for table creation
conn.commit()

# Prepare insert query
insert_query = """
INSERT INTO diabetic_data (encounter_id, patient_nbr, race, gender, age, weight,
                           admission_type_id, discharge_disposition_id,
                           admission_source_id, time_in_hospital)
VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
"""

# Insert data row by row
for _, row in df.iterrows():
    try:
        cursor.execute(insert_query, tuple(row[:10]))
    except Exception as e:
        print(f"Error inserting row: {row[:10]}, Error: {e}")

conn.commit()
cursor.close()
conn.close()

print("Data loaded into MySQL!")
