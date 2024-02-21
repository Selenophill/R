# Recursive function to calculate the factorial
fact = function(n) {
if (n == 0) {
return(1)
} else {
return(n * fact(n - 1))
}
}
# Input a number from the user
n = as.integer(readline("Enter a non-negative integer: "))
if (n < 0) {
cat("Factorial is not defined for negative numbers.\n")
} else {
result = fact(n)
cat("The factorial of", n, "is", result, "\n")
}
