# Load the air quality dataset
data("airquality", package = "datasets")
# a) Assigning names
names(airquality) <- c("Ozone", "Solar.R", "Wind", "Temp", "Month", "Day")
# b) Change colors of the Histogram
hist(airquality$Ozone, col = "skyblue", main = "Histogram of Ozone", xlab = 
"Ozone Levels", ylab = "Frequency")
# c) Remove Axis and Add labels to Histogram
hist(airquality$Ozone, col = "lightgreen", main = "", xlab = "", ylab = "", axes
= FALSE)
title(xlab = "Ozone Levels", ylab = "Frequency", main = "Histogram of Ozone")
# d) Change Axis limits of a Histogram
hist(airquality$Ozone, col = "lightpink", main = "Histogram of Ozone", xlab = 
"Ozone Levels", ylab = "Frequency", xlim = c(0, 150), ylim = c(0, 40))
# e) Add Density curve to the histogram
# Remove missing values in 'Ozone' column
cleaned_data <- na.omit(airquality$Ozone)
# Create a histogram of 'Ozone' column
hist(cleaned_data, col = "lightblue", main = "Histogram of Ozone", xlab = "Ozone 
Levels", ylab = "Frequency")
# Add a density curve to the histogram
lines(density(cleaned_data), col = "red")
