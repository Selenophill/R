# Function to find all prime numbers up to a specified number using the Sieve of 
Eratosthenes
sieve_of_eratosthenes <- function(n) {
if (n < 2) {
cat("No prime numbers in the specified range.\n")
return()
}
is_prime <- rep(TRUE, n)
is_prime[1] <- FALSE # 1 is not prime
p <- 2
while (p^2 <= n) {
if (is_prime[p]) {
for (i in seq(p^2, n + 1, by = p)){
is_prime[i] <- FALSE
}
}
p <- p + 1
}
primes <- which(is_prime)
cat("Prime numbers up to", n, "are:\n", primes, "\n")
}
# Input a number from the user
n <- as.integer(readline("Enter a positive integer: "))
sieve_of_eratosthenes(n)
