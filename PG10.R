# Load the mtcars dataset
data(mtcars)
# a) Total number of observations and variables
observations <- nrow(mtcars)
variables <- ncol(mtcars)
cat("Total number of observations:", observations, "\n")
cat("Total number of variables:", variables, "\n")
# b) Car with the largest and least hp
car_largest_hp <- mtcars[which.max(mtcars$hp), ]
car_least_hp <- mtcars[which.min(mtcars$hp), ]
cat("Car with the largest hp:\n")
print(car_largest_hp)
cat("Car with the least hp:\n")
print(car_least_hp)
# c) Histogram / density plot and skewness
par(mfrow = c(4, 3), mar = c(3, 3, 1, 1)) # Adjusting margin size
for (i in 1:ncol(mtcars)) {
hist(mtcars[, i], main = names(mtcars)[i], xlab = "", col = "skyblue")
lines(density(mtcars[, i]), col = "red") # Adding density curve
}
# Calculate skewness
library(e1071)
skew <- sapply(mtcars, skewness)
cat("Skewness of variables:\n")
print(skew)
# d) Average difference and standard deviation between hp for 3 and 4 cylinders
hp_diff_mean <- mean(mtcars$hp[mtcars$cyl == 3]) - mean(mtcars$hp[mtcars$cyl == 
4])
hp_diff_sd <- sd(mtcars$hp[mtcars$cyl == 3]) - sd(mtcars$hp[mtcars$cyl == 4])
cat("Average difference in hp between 3 and 4 cylinders:", hp_diff_mean, "\n")
cat("Difference in standard deviations of hp between 3 and 4 cylinders:", 
hp_diff_sd, "\n")
# e) Pair of variables with the highest Pearson correlation
cor_matrix <- cor(mtcars)
diag(cor_matrix) <- 0 # Exclude diagonal values
max_corr <- which(cor_matrix == max(cor_matrix), arr.ind = TRUE)
cat("Pair of variables with the highest Pearson correlation:", 
rownames(cor_matrix)[max_corr[1,1]], "and", colnames(cor_matrix)[max_corr[1,2]], 
"\n")
# c) Histogram / density plot and skewness
par(mfrow = c(4, 3)) # To display histograms for each variable in a grid
for (i in 1:ncol(mtcars)) {
hist(mtcars[, i], main = names(mtcars)[i], xlab = "", col = "skyblue")
lines(density(mtcars[, i]), col = "red") # Adding density curve
}
# Calculate skewness
library(e1071) #functions for data analysis & ML
skew <- sapply(mtcars, skewness)#apply the skewness() function to each column
cat("Skewness of variables:\n")
print(skew)
# d) Average difference and standard deviation between hp for 3 and 4 cylinders
hp_diff_mean <- mean(mtcars$hp[mtcars$cyl == 3]) - mean(mtcars$hp[mtcars$cyl == 
4])
hp_diff_sd <- sd(mtcars$hp[mtcars$cyl == 3]) - sd(mtcars$hp[mtcars$cyl == 4])
cat("Average difference in hp between 3 and 4 cylinders:", hp_diff_mean, "\n")
cat("Difference in standard deviations of hp between 3 and 4 cylinders:", 
hp_diff_sd, "\n")
# e) Pair of variables with the highest Pearson correlation
cor_matrix <- cor(mtcars)
diag(cor_matrix) <- 0 # Exclude diagonal values
max_corr <- which(cor_matrix == max(cor_matrix), arr.ind = TRUE)
cat("Pair of variables with the highest Pearson correlation:", 
rownames(cor_matrix)[max_corr[1,1]], "and", colnames(cor_matrix)[max_corr[1,2]], 
"\n")
