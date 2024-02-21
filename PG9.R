# Importing the CSV file into R
emp_data <- read.csv("empdata.csv")
# a) Find the total number rows & columns
num_rows <- nrow(emp_data)
num_cols <- ncol(emp_data)
cat("Total number of rows:", num_rows, "\n")
cat("Total number of columns:", num_cols, "\n")
# b) Find the maximum salary
max_salary <- max(emp_data$salary)
cat("Maximum salary:", max_salary, "\n")
# c) Retrieve the details of the employee with maximum salary
employee_max_salary <- emp_data[emp_data$salary == max_salary, ]
cat("Employee with maximum salary:\n")
print(employee_max_salary)
# d) Retrieve all the employees working in the IT Department
emp_IT <- subset(emp_data, dept == "IT")
cat("Employees working in the IT Department:\n")
print(emp_IT)
# e) Retrieve the employees in the IT Department whose salary is greater than 
20000
employees_IT_high_salary <- subset(emp_IT, salary > 20000)
cat("Employees in the IT Department with salary > 20000:\n")
print(employees_IT_high_salary)
# Write these employees to a new CSV file
write.csv(employees_IT_high_salary, "output.csv", row.names = FALSE)
