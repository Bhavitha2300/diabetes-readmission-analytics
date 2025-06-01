import pandas as pd
import mysql.connector

# Load CSV
df = pd.read_csv('/Users/bhavithaasam/Desktop/Projects/diabetes_sql_project/dataset and article/diabetic_data.csv')
df.columns = df.columns.str.strip().str.lower().str.replace(' ', '_').str.replace('-', '_').str.replace('[^a-zA-Z0-9_]', '')

# Replace 'Unknown/Invalid' in gender
df['gender'] = df['gender'].replace({'Unknown/Invalid': 'Unknown'})

# Replace NaN with None
df = df.where(pd.notnull(df), None)

print("Unique genders:", df['gender'].unique())

# Connect to MySQL
conn = mysql.connector.connect(
    host='localhost',
    user='root',
    password='baBBy@77007700',
    database='diabetes_project'
)
cursor = conn.cursor()

# Step 1: Drop the table if it exists
cursor.execute("DROP TABLE IF EXISTS diabetic_data;")

# Step 2: Create the table with PRIMARY KEY
create_table_query = """
CREATE TABLE diabetic_data (
    encounter_id BIGINT PRIMARY KEY,
    patient_nbr BIGINT,
    race VARCHAR(50),
    gender VARCHAR(30),
    age VARCHAR(20),
    weight VARCHAR(20),
    admission_type_id INT,
    discharge_disposition_id INT,
    admission_source_id INT,
    time_in_hospital INT,
    payer_code VARCHAR(20),
    medical_specialty VARCHAR(50),
    num_lab_procedures INT,
    num_procedures INT,
    num_medications INT,
    number_outpatient INT,
    number_emergency INT,
    number_inpatient INT,
    diag_1 VARCHAR(10),
    diag_2 VARCHAR(10),
    diag_3 VARCHAR(10),
    number_diagnoses INT,
    max_glu_serum VARCHAR(20),
    a1cresult VARCHAR(20),
    metformin VARCHAR(20),
    repaglinide VARCHAR(20),
    nateglinide VARCHAR(20),
    chlorpropamide VARCHAR(20),
    glimepiride VARCHAR(20),
    acetohexamide VARCHAR(20),
    glipizide VARCHAR(20),
    glyburide VARCHAR(20),
    tolbutamide VARCHAR(20),
    pioglitazone VARCHAR(20),
    rosiglitazone VARCHAR(20),
    acarbose VARCHAR(20),
    miglitol VARCHAR(20),
    troglitazone VARCHAR(20),
    tolazamide VARCHAR(20),
    examide VARCHAR(20),
    citoglipton VARCHAR(20),
    insulin VARCHAR(20),
    glyburide_metformin VARCHAR(20),
    glipizide_metformin VARCHAR(20),
    glimepiride_pioglitazone VARCHAR(20),
    metformin_rosiglitazone VARCHAR(20),
    metformin_pioglitazone VARCHAR(20),
    `change` VARCHAR(20),
    diabetesmed VARCHAR(20),
    readmitted VARCHAR(20)
);
"""
cursor.execute(create_table_query)
conn.commit()

# Step 3: Insert data
columns = ', '.join([f"`{col}`" for col in df.columns])
placeholders = ', '.join(['%s'] * len(df.columns))
insert_query = f"INSERT INTO diabetic_data ({columns}) VALUES ({placeholders})"
data_tuples = [tuple(row) for row in df.values]

try:
    cursor.executemany(insert_query, data_tuples)
    conn.commit()
    print("Data loaded into MySQL successfully!")
except Exception as e:
    print(f"Error during bulk insert: {e}")

# Step 4: Close connections
cursor.close()
conn.close()

# Step 5: Display DataFrame info
df.info()
print(df.head())
