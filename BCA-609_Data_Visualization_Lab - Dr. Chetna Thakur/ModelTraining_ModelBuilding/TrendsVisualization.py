import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

# --- 1. CONFIGURATION ---
TARGET_ROLL_NO = 1323607  # The student you want to visualize
# fileData = 'BCA-609_Data_Visualization_Lab - Dr. Chetna Thakur\ModelTraining_ModelBuilding\student_data.csv'
fileData = 'student_data.csv'
CSV_FILE_NAME = fileData

# --- 2. DATA CLEANING FUNCTIONS ---
def clean_grade(value):
    """Converts mixed grade data (strings/RE/Absent) into numbers."""
    value = str(value).upper().strip()
    if value in ['NAN', 'ABSENT', 'RL(REGN.)', 'RLS', 'RLA', '', 'nan']:
        return None
    if 'RE' in value or '[' in value:
        return 0.0 
    try:
        return float(value)
    except ValueError:
        return None

def find_roll_column(columns):
    """Finds the column that likely contains the Roll No."""
    for col in columns:
        clean_col = col.lower().strip().replace('.', '')
        if 'roll' in clean_col and 'no' in clean_col:
            return col
    return None

# --- 3. MAIN EXECUTION ---
try:
    # Load the CSV
    df = pd.read_csv(CSV_FILE_NAME)
    df.columns = df.columns.str.strip()
    
    # Automatically find the Roll No column
    roll_col_name = find_roll_column(df.columns)
    
    if roll_col_name is None:
        raise ValueError("Could not find a 'Roll No.' column. Please check CSV headers.")
        
    print(f"Found Roll No column: '{roll_col_name}'")

    # Convert Roll No column to numeric, forcing errors to NaN, then drop NaNs
    df[roll_col_name] = pd.to_numeric(df[roll_col_name], errors='coerce')
    
    # Filter for the student
    student_data = df[df[roll_col_name] == TARGET_ROLL_NO]
    
    if student_data.empty:
        print(f"Error: Student with Roll No {TARGET_ROLL_NO} not found.")
    else:
        # Get Name (Assuming 'Name' column exists, otherwise use 'Unknown')
        name_col = 'Name' if 'Name' in df.columns else df.columns[3] # Fallback to 4th col
        student_name = student_data[name_col].values[0]
        
        # Identify Semester Columns (Columns containing 'Sem')
        sem_cols = [col for col in df.columns if 'Sem' in col]
        
        # Extract grades
        grades = []
        valid_sems = []
        
        for sem in sem_cols:
            raw_val = student_data[sem].values[0]
            cleaned_val = clean_grade(raw_val)
            grades.append(cleaned_val)
            valid_sems.append(sem)
        
        # --- 4. VISUALIZATION ---
        if not valid_sems:
             print("Error: No semester columns found.")
        else:
            plt.figure(figsize=(10, 6))
            plt.plot(valid_sems, grades, marker='o', linestyle='-', color='green', linewidth=2, markersize=8)
            # plt.plot(valid_sems, grades, marker='o', linestyle='-', color='green', linewidth=2, markersize=8)
            # plt.bar(valid_sems, grades, color='green', width=0.6, edgecolor='black', linewidth=2)

            # Annotate points
            for i, txt in enumerate(grades):
                if txt is not None:
                    plt.annotate(f'{txt}', (valid_sems[i], grades[i]), textcoords="offset points", xytext=(0,10), ha='center')

            plt.title(f'Performance Trend: {student_name} (Roll No: {TARGET_ROLL_NO})', fontsize=14)
            plt.xlabel('Semester')
            plt.ylabel('Score / GPA')
            plt.ylim(0, 10.5)
            plt.grid(True, linestyle='--', alpha=0.5)
            plt.show()

except Exception as e:
    print(f"Error: {e}")