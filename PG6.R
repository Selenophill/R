data("mammals", package = "MASS")
# a) Finding the Pearson and Spearman correlation coefficients
pcorr <- cor(mammals$body, mammals$brain, method = "pearson")
scorr <- cor(mammals$body, mammals$brain, method = "spearman")
# Displaying the correlation coefficients
cat("Pearson correlation coefficient: ", pcorr, "\n")
cat("Spearman correlation coefficient: ", scorr, "\n")
# b) Plotting the data using the plot command
plot(mammals$body, mammals$brain, xlab = "Body Weight", ylab = "Brain Weight", 
main = "Mammals' Body Weight vs. Brain Weight")
# c) Plotting the logarithm (log) of each variable and checking the difference
log_body <- log(mammals$body)
log_brain <- log(mammals$brain)
plot(log_body, log_brain, xlab = "Log Body Weight", ylab = "Log Brain Weight", 
main = "Log of Mammals' Body Weight vs. Brain Weight"
