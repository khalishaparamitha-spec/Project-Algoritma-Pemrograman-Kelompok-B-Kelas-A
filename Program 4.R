#Menerima input NIP
nip <- readline(prompt = "Masukkan NIP ASN (18 digit):")

#Ekstrak tahun, bulan, dan tanggal menggunakan substr (semuanya bertipe string)
tahun <- substr(nip, 1, 4)
kode <- substr(nip, 5, 6)
tanggal <- substr(nip, 7, 8)

#Struktur percabangan if-else bertingkat untuk menentukan nama bulan
if (kode == "01") {
  bulan_nama <- "Januari"
} else if (kode == "02") {
  bulan_nama <- "Februari"
} else if (kode == "03") {
  bulan_nama <- "Maret"
} else if (kode == "04") {
  bulan_nama <- "April"
} else if (kode == "05") {
  bulan_nama <- "Mei"
} else if (kode == "06") {
  bulan_nama <- "Juni"
} else if (kode == "07") {
  bulan_nama <- "Juli"
} else if (kode == "08") {
  bulan_nama <- "Agustus"
} else if (kode == "09") {
  bulan_nama <- "September"
} else if (kode == "10") {
  bulan_nama <- "Oktober"
} else if (kode == "11") {
  bulan_nama <- "November"
} else if (kode == "12") {
  bulan_nama <- "Desember"
} else {
  bulan_nama <- "Bulan tidak valid"
}

# Menampilkan hasil akhir
cat("Tanggal lahir ASN:", tanggal, bulan_nama, tahun, "\n")