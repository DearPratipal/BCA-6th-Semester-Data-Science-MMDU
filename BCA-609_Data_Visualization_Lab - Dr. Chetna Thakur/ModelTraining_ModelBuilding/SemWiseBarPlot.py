import matplotlib.pyplot as plt

# Example data
valid_sems = [1, 2, 3, 4, 5]
grades = [8.2, 7.5, 9.0, 8.8, 7.9]

# Create bar plot
plt.bar(valid_sems, grades, color='green', width=0.6, edgecolor='black', linewidth=2)

# Optional: Add markers on top of bars (to mimic 'marker' effect)
plt.plot(valid_sems, grades, marker='o', color='black', linestyle='')

# Labels and title
plt.xlabel("Semester")
plt.ylabel("Grade")
plt.title("Grades per Semester")

plt.show()