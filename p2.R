# Sample data for monthly revenue and expenses (in $1000 units)
monthly_revenue <- c(50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 155, 165)
monthly_expenses <- c(30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85)
# Calculate profit for each month
profit <- monthly_revenue - monthly_expenses
# Calculate profit after tax for each month (Tax Rate is 30%)
tax_rate <- 0.30
profit_after_tax <- profit * (1 - tax_rate)
# Calculate profit margin for each month as a percentage
profit_margin <- (profit_after_tax / monthly_revenue) * 100
# Calculate the mean profit after tax for the year
mean_profit_after_tax <- mean(profit_after_tax)
# Determine good months, bad months, best month, and worst month
good_months <- profit_after_tax > mean_profit_after_tax
bad_months <- profit_after_tax < mean_profit_after_tax
best_month <- which.max(profit_after_tax)
worst_month <- which.min(profit_after_tax)
# Format results as vectors with appropriate units and precision
profit <- round(profit * 1000, 2) # Convert to $1000 units
profit_after_tax <- round(profit_after_tax * 1000, 2) # Convert to $1000 units
profit_margin <- round(profit_margin, 0) # Remove decimal points for percentage
# Create a data frame to store the results
results <- data.frame(
Month = 1:12,
Profit = profit,
ProfitAfterTax = profit_after_tax,
ProfitMargin = profit_margin,
GoodMonth = good_months,
BadMonth = bad_months
)
# Print the results
cat("Profit for each month (in $1000 units):\n")
cat(results$Profit, "\n\n")
cat("Profit after tax for each month (in $1000 units):\n")
cat(results$ProfitAfterTax, "\n\n")
cat("Profit margin for each month (in %):\n")
cat(results$ProfitMargin, "\n\n")
cat("Good Months (Profit after tax greater than mean):\n")
cat(results$Month[results$GoodMonth], "\n\n")
cat("Bad Months (Profit after tax less than mean):\n")
cat(results$Month[results$BadMonth], "\n\n")
cat("Best Month (Max Profit after tax):\n")
cat(results$Month[best_month], "\n\n")
cat("Worst Month (Min Profit after tax):\n")
cat(results$Month[worst_month], "\n\n")
# Export the results to a CSV file
write.csv(results, "financial_metrics.csv", row.names = FALSE)
