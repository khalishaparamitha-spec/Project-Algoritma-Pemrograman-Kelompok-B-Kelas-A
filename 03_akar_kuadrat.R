hitung_akar <- function(a, b, c) {
  diskriminan <- b^2 - 4*a*c
  if (diskriminan > 0) {
    x1 <- (-b + sqrt(diskriminan)) / (2*a)
    x2 <- (-b - sqrt(diskriminan)) / (2*a)
    cat("Persamaan memiliki dua akar real berbeda:\n")
    cat("x1 =", sprintf("%.1f", x1), "\n")
    cat("x2 =", sprintf("%.1f", x2), "\n")
  } else if (diskriminan == 0) {
    x <- -b / (2*a)
    cat("Persamaan memiliki dua akar real kembar:\n")
    cat("x1 = x2 =", sprintf("%.1f", x), "\n")
  } else {
    cat("Persamaan hanya memiliki akar-akar imajiner.\n")
  }
}

a <- as.numeric(readline("Masukkan nilai a: "))
b <- as.numeric(readline("Masukkan nilai b: "))
c <- as.numeric(readline("Masukkan nilai c: "))
cat("-----------------------------------\n")
cat("Persamaan:", a, "x² +", b, "x +", c, "= 0\n")
cat("-----------------------------------\n")
hitung_akar(a, b, c)