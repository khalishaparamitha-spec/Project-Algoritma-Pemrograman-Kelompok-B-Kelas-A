# input titik U
x1 <- as.numeric(readline("Masukkan x1: "))
x2 <- as.numeric(readline("Masukkan x2: "))
x3 <- as.numeric(readline("Masukkan x3: "))

U <- c(x1, x2, x3)

# titik pusat cluster
A <- c(2, 1, 3)
B <- c(1, -4, 6)
C <- c(-2, 3, -2)

# fungsi jarak
jarak <- function(P, Q) {
  sqrt((P[1]-Q[1])^2 + (P[2]-Q[2])^2 + (P[3]-Q[3])^2)
}

# hitung jarak
dA <- jarak(U, A)
dB <- jarak(U, B)
dC <- jarak(U, C)

# tampilkan jarak
cat("Jarak ke A:", dA, "\n")
cat("Jarak ke B:", dB, "\n")
cat("Jarak ke C:", dC, "\n")

# menentukan cluster
if (dA <= dB && dA <= dC) {
  cat("Titik U masuk cluster A\n")
} else if (dB <= dA && dB <= dC) {
  cat("Titik U masuk cluster B\n")
} else {
  cat("Titik U masuk cluster C\n")
}
