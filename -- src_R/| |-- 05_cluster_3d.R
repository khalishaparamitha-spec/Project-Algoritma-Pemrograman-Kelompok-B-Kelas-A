# input titik U
x1 <- as.numeric(readline("Masukkan x1: "))
x2 <- as.numeric(readline("Masukkan x2: "))
x3 <- as.numeric(readline("Masukkan x3: "))

U <- c(x1, x2, x3)

if (is.na(x1) || is.na(x2) || is.na(x3)) {
  cat("Input tidak valid, hasil error\n")
} else {
  
  
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
  if (dA == dB || dA == dC || dB == dC) {
    
    if (dA == dB && dA == dC) {
      cat("Jarak sama: A = B = C\n")
    } else if (dA == dB) {
      cat("Jarak sama: Titik U masuk cluster A dan B\n")
    } else if (dA == dC) {
      cat("Jarak sama: Titik U masuk cluster A dan C\n")
    } else if (dB == dC) {
      cat("Jarak sama: Titik U masuk cluster B dan C\n")
    }
    
  } else if (dA < dB && dA < dC) {
    cat("Titik U masuk cluster A\n")
  } else if (dB < dA && dB < dC) {
    cat("Titik U masuk cluster B\n")
  } else {
    cat("Titik U masuk cluster C\n")
  }
  
}
