# Assigning to Variables
c <- "Hello, R!" # Character
d=3.14159 # Double
i <- 42 # Integer
l <- TRUE # Logical
cmp <- 3 + 2i # Complex
# Display variable types
cat("d is of type:", typeof(d))
cat("i is of type:", typeof(i), "\n")
cat("l is of type:", typeof(l), "\n")
cat("cmp is of type:", typeof(cmp), "\n")
cat("c is of type:", typeof(c), "\n")
# Arithmetic Operations
cat("d + i:", d + i, "\n")
cat("d * i:", d * i, "\n")
cat("d / i", d / i, "\n")
# Logical Operations
cat("Logical AND l && T:", l && T,"\n")
cat("Logical OR l || F:", l || F, "\n")
cat("Logical NOT !l:", !l, "\n")
# Generate a sequence of integers from 1 to 10
sv <- 1:10
# Create a vector
v <- c(5, 10, 15, 20, 25)
cat("Sequence of Integers:", sv, "\n")
cat("My Vector:", v, "\n")
# Create a matrix
m <- matrix(1:12, nrow <- 3, ncol <- 4)
cat("My Matrix:\n")
cat(m)
# Create vectors
v1 <- c(1, 2, 3)
v2 <- c(4, 5, 6)
v3 <- c(7, 8, 9)
# Bind vectors into a matrix
mv <- rbind(v1, v2,v3)
cat("Matrix from Vectors:\n")
cat(mv)
# Extract elements from vectors
e1 <- mv[2]
e2 <- sv[5]
# Extract elements from matrices
e3 <- m[2, 3]
e4 <- mv[1, 2]
cat("Element from My Vector:", e1, "\n")
cat("Element from Sequence Vector:", e2, "\n")
cat("Element from My Matrix:", e3, "\n")
cat("Element from Matrix from Vectors:", e4, "\n")
