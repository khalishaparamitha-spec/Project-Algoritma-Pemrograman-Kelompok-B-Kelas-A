#Program 1: Analisis Teks - Menghitung Jumlah Kata dan Jumlah Kalimat
hitung_kata <- function(teks) {
  #Memisahkan teks berdasarkan spasi lalu menghitung elemen
  kata <- unlist(strsplit(trimws(teks), "\\s+"))
  return(length(kata))
}
hitung_kalimat <- function(teks) {
  
  #Memisahkan teks berdasarkan tanda titik, lalu hitung bagian tidak kosong
  bagian <- strsplit(teks, "\\.")[[1]]
  jumlah <- length(bagian[trimws(bagian) != ""])
  return(jumlah)
}

#Input dari pengguna
teks <- readline(prompt = "Masukkan teks: ")

#Proses perhitungan
jumlah_kata <- hitung_kata(teks)
jumlah_kalimat <- hitung_kalimat(teks)

#Output hasil
print(paste0("Teks tersebut memuat ", jumlah_kalimat, " kalimat dan ", jumlah_kata, " kata."))
