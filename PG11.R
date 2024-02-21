# Generating sample data for demonstration
set.seed(123)
Years_of_Experience <- 1:40
Salary <- 30000 + 1500 * Years_of_Experience + rnorm(40, mean = 0, sd = 2000) # 
Generating salaries
# Create a data frame with the generated data
data <- data.frame(Years_of_Experience, round(Salary, digits = -1 ))
# Perform linear regression using lm() function
model <- lm(Salary ~ Years_of_Experience, data = data)
# Plot the data points and the best-fit line
plot(Salary ~ Years_of_Experience, data, col = "blue", main = "Salary vs. Years 
of Experience")
abline(model, col = "red")
# Save the plot as an image file (e.g., PNG)
png("Salary_Experience_Plot03.png")
plot(Salary ~ Years_of_Experience, data, col = "blue", main = "Salary vs. Years 
of Experience")
abline(model, col = "red")
dev.off()
# Generate predicted values from the model
predicted_values <- round( predict(model), digits=0)
# Plotting Actual vs. Predicted values
plot(Salary, predicted_values, main = "Actual vs. Predicted Salaries", xlab = 
"Actual Salary", ylab = "Predicted Salary", col = "green")
# Save the plot as an image file (e.g., PNG)
jpeg("Actual_vs_Predicted_Salary.jpg")
plot(Salary, predicted_values, main = "Actual vs. Predicted Salaries", xlab = 
"Actual Salary", ylab = "Predicted Salary", col = "green")
dev.off()
# Attach predicted values as a new column to the original dataset
data$Predicted_Salary <- predicted_values
# Save the dataset as a new CSV file
write.csv(data, "Salary_Experience_Predictions.csv", row.names = FALSE)
