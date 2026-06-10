#Program 3
#Fungsi Akar-akar Persamaan Kuadrat
hitung_akar <- function(a, b, c) {
  diskriminan <- b^2 - 4*a*c
  if (diskriminan > 0) {
    x1 <- (-b + sqrt(diskriminan)) / (2*a)
    x2 <- (-b - sqrt(diskriminan)) / (2*a)
    cat("Persamaan Memiliki Dua Akar Real yang Berbeda:\n")
    cat("x1 =", sprintf("%.3f", x1), "\n")
    cat("x2 =", sprintf("%.3f", x2), "\n")
  } else if (diskriminan == 0) {
    x <- -b / (2*a)
    cat("Persamaan Memiliki Akar Real Kembar:\n")
    cat("x1 = x2 =", sprintf("%.3f", x), "\n")
  } else {
    real <- -b / (2*a)
    imaj <- sqrt(abs(diskriminan)) / (2*a)
    cat("Persamaan Memiliki Akar-Akar Imajiner:\n")
    cat("x1 =", sprintf("%.3f", real), "+", sprintf("%.3f", imaj), "i\n")
    cat("x2 =", sprintf("%.3f", real), "-", sprintf("%.3f", imaj), "i\n")
  }
}

#Memasukkan Nilai Variabel dari Persamaan Kuadrat
a <- as.numeric(readline("Masukkan nilai a: "))
b <- as.numeric(readline("Masukkan nilai b: "))
c <- as.numeric(readline("Masukkan nilai c: "))

#Menampilkan Bentuk Persamaan
cat("Persamaan:", a, "x² +", b, "x +", c, "= 0\n")

#Menampilkan Hasil 
hitung_akar(a, b, c)
