# Create matrices A and B
A = matrix(1:9, nrow = 3, ncol = 3)
B = matrix(9:1, nrow = 3, ncol = 3)
# a) Transpose of the matrix
A_t = t(A)
B_t = t(B)
# b) Addition
sum = A + B
# c) Subtraction
diff = A - B
# d) Multiplication
prod = A %*% B
# Print the results
cat("Matrix A:\n")
print(A)
cat("Matrix B:\n")
print(B)
cat("Transpose of A:\n")
print(A_t)
cat("Transpose of B:\n")
print(B_t)
cat("Addition of A and B:\n")
print(sum)
cat("Subtraction of A and B:\n")
print(diff)
cat("Multiplication of A and B:\n")
print(prod)
