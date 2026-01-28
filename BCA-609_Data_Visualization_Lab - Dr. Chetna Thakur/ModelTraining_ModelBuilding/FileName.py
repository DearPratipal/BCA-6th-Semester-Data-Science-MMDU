import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

# 1. Load the dataset
# Assuming you saved the file as 'student_data.csv'
df = pd.read_csv('student_data.csv')

# 2. Define a function to clean the Semester columns
def clean_grade(value):
    value = str(value).upper().strip()
    
    # Handle explicit missing/special cases
    if value in ['NAN', 'ABSENT', 'RL(REGN.)', 'RLS', 'RLA', '']:
        return np.nan  # Return Not a Number (missing)
    
    # Handle Re-appears (RE). 
    # Logic: If they have a Re-appear, their GPA for that sem is technically 
    # undetermined or could be treated as a fail (0). 
    # For this model, we will treat RE as NaN (missing) to avoid skewing averages, 
    # OR you can set it to 0.0 if you want to penalize it.
    if 'RE' in value or '[' in value:
        return 0.0 # Treating Backlog as 0 for the model
        
    try:
        # Try to convert grade to a float number
        return float(value)
    except ValueError:
        return np.nan

# 3. Apply cleaning to Semester Columns
sem_cols = ['1st Sem.', '2nd Sem.', '3rd Sem.', '4th Sem.', '5th Sem.', '6th Sem.']

# Check if columns exist in your CSV, names might vary slightly
existing_sem_cols = [col for col in sem_cols if col in df.columns]

for col in existing_sem_cols:
    df[col] = df[col].apply(clean_grade)

# 4. Drop rows where there is absolutely no grade data if necessary
df_clean = df.dropna(subset=['1st Sem.']) 

print("Data Cleaning Complete.")
print(df_clean[existing_sem_cols].head())