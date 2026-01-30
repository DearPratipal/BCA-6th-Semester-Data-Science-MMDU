import pandas as pd
import numpy as np

# Power BI provides the table as 'dataset'
df = dataset.copy()

# -----------------------------------
# 1. Fix Student_ID
# -----------------------------------
df["Student_ID"] = pd.to_numeric(df["Student_ID"], errors="coerce")
df["Student_ID"].fillna(method="ffill", inplace=True)

# -----------------------------------
# 2. Convert numeric columns
# -----------------------------------
numeric_cols = [
    "Age",
    "Attendance_Percentage",
    "Study_Hours_Per_Day",
    "Internal_Marks",
    "External_Marks",
    "CGPA",
    "Backlogs"
]

for col in numeric_cols:
    df[col] = pd.to_numeric(df[col], errors="coerce")

# -----------------------------------
# 3. Clean Gender column
# -----------------------------------
df["Gender"] = df["Gender"].str.lower().str.strip()
df["Gender"] = df["Gender"].replace({
    "m": "male",
    "f": "female",
    "unknown": np.nan,
    "": np.nan
})
df["Gender"].fillna("male", inplace=True)

# -----------------------------------
# 4. Clean Department column
# -----------------------------------
df["Department"] = df["Department"].str.upper().str.strip()
df["Department"].replace("", np.nan, inplace=True)
df["Department"].fillna("BCA", inplace=True)

# -----------------------------------
# 5. Clean Participation_Level
# -----------------------------------
df["Participation_Level"] = df["Participation_Level"].str.lower().str.strip()
df["Participation_Level"] = df["Participation_Level"].replace({
    "low": "Low",
    "medium": "Medium",
    "mid": "Medium",
    "high": "High",
    "": np.nan
})
df["Participation_Level"].fillna("Medium", inplace=True)

# -----------------------------------
# 6. Handle Missing Numeric Values
# -----------------------------------
for col in numeric_cols:
    df[col].fillna(df[col].median(), inplace=True)

# -----------------------------------
# 7. Fix Invalid Ranges
# -----------------------------------
df.loc[(df["Age"] < 16) | (df["Age"] > 30), "Age"] = df["Age"].median()

df.loc[
    (df["Attendance_Percentage"] < 0) |
    (df["Attendance_Percentage"] > 100),
    "Attendance_Percentage"
] = df["Attendance_Percentage"].median()

df.loc[df["CGPA"] < 0, "CGPA"] = df["CGPA"].median()
df.loc[df["CGPA"] > 10, "CGPA"] = 10

df.loc[df["Backlogs"] < 0, "Backlogs"] = 0

# -----------------------------------
# 8. Feature Engineering
# -----------------------------------
df["Total_Marks"] = df["Internal_Marks"] + df["External_Marks"]

df["Result_Status"] = np.where(df["Total_Marks"] >= 40, "Pass", "Fail")

df["Performance_Level"] = pd.cut(
    df["CGPA"],
    bins=[0, 6, 8, 10],
    labels=["Low", "Medium", "High"]
)

# -----------------------------------
# 9. Return cleaned dataset to Power BI
# -----------------------------------
df 
