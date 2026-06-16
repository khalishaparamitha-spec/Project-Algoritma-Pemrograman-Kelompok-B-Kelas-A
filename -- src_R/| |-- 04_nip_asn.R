#Menerima input NIP
nip <- readline(prompt = "Masukkan NIP ASN:")

#Ekstrak tahun, bulan, dan tanggal menggunakan substr (semuanya bertipe string)
tahun <- substr(nip, 1, 4)
kode <- substr(nip, 5, 6)
tanggal <- substr(nip, 7, 8)

#Mengubah tahun dan tanggal menjadi numeric
tanggal_angka <- as.numeric(tanggal)
tahun_angka <- as.numeric(tahun)

#Struktur percabangan if-else bertingkat untuk menentukan nama bulan
if (kode == "01") {
  bulan_nama <- "Januari"; hari_maks <- 31
} else if (kode == "02") {
  bulan_nama <- "Februari"
  if ((tahun_angka %% 4 == 0 && tahun_angka %% 100 != 0)||(tahun_angka %% 400 == 0)) {
    hari_maks <- 29
  } else {
    hari_maks <- 28
  }
} else if (kode == "03") {
  bulan_nama <- "Maret"; hari_maks <- 31
} else if (kode == "04") {
  bulan_nama <- "April"; hari_maks <- 30
} else if (kode == "05") {
  bulan_nama <- "Mei"; hari_maks <- 31
} else if (kode == "06") {
  bulan_nama <- "Juni"; hari_maks <- 30
} else if (kode == "07") {
  bulan_nama <- "Juli"; hari_maks <- 31
} else if (kode == "08") {
  bulan_nama <- "Agustus"; hari_maks <- 31
} else if (kode == "09") {
  bulan_nama <- "September"; hari_maks <- 30
} else if (kode == "10") {
  bulan_nama <- "Oktober"; hari_maks <- 31
} else if (kode == "11") {
  bulan_nama <- "November"; hari_maks <- 30
} else if (kode == "12") {
  bulan_nama <- "Desember"; hari_maks <- 31
} else {
  bulan_nama <- "Bulan tidak valid"
  hari_maks <- 0
}

#Validasi tanggal berdasarkan batas hari_maks dari bulan
if (is.na(tanggal_angka)||tanggal_angka < 1||tanggal_angka > hari_maks){
  tanggal_angka <- "Tanggal tidak valid"
} else {
  tanggal_angka <- tanggal 
}


#Menampilkan hasil akhir
cat("Tanggal lahir ASN:", tanggal_angka, bulan_nama, tahun, "\n")
