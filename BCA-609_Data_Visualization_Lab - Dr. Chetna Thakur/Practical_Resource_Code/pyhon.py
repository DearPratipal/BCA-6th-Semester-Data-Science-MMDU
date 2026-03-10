import pandas as pd

# Read CSV
df = pd.read_csv("students.csv")

# Convert Roll No to numeric
df["Roll No."] = pd.to_numeric(df["Roll No."])

# Sort data
df = df.sort_values("Roll No.")

# Create full roll sequence
start_roll = df["Roll No."].min()
end_roll = df["Roll No."].max()

full_rolls = pd.DataFrame({
    "Roll No.": range(start_roll, end_roll + 1)
})

# Merge
result = pd.merge(full_rolls, df, on="Roll No.", how="left")

# Remove old serial column if exists
if "S.No." in result.columns:
    result.drop(columns=["S.No."], inplace=True)

# Create new serial number
result.insert(0, "S.No.", range(1, len(result) + 1))

# Save output
result.to_csv("students_completed_sequence.csv", index=False)

print("New file created successfully")