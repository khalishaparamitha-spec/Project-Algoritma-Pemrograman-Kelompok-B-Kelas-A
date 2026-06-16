#Menerima input NIP dari pengguna
nip = input("Masukkan NIP ASN:")

#Ekstrak tahun, bulan, dan tanggal dengan menggunakan slicing
tahun = nip[0:4]
bulan = nip[4:6]
tanggal = nip[6:8]

#Mengubah ke integer 
tanggal_angka = int(tanggal)
tahun_angka = int(tahun)

#Menggunakan struktur percabangan if-else bertingkat untuk menentukan nama bulan
if bulan == "01":
    nama_bulan = "Januari"
    hari_maks = 31
elif bulan == "02":
    nama_bulan = "Februari"
    if (tanggal_angka % 4 == 0 and tahun_angka % 100 != 0 ) or (tahun_angka % 400 == 0):
      hari_maks = 29
    else:
      hari_maks = 28
elif bulan == "03":
    nama_bulan = "Maret"
    hari_maks = 31
elif bulan == "04":
    nama_bulan = "April"
    hari_maks = 30
elif bulan == "05":
    nama_bulan = "Mei"
    hari_maks = 31
elif bulan == "06":
    nama_bulan = "Juni"
    hari_maks = 30
elif bulan == "07":
    nama_bulan = "Juli"
    hari_maks = 31
elif bulan == "08":
    nama_bulan = "Agustus"
    hari_maks = 31
elif bulan == "09":
    nama_bulan = "September"
    hari_maks = 30
elif bulan == "10":
    nama_bulan = "Oktober"
    hari_maks = 31
elif bulan == "11":
    nama_bulan = "November"
    hari_maks = 30
elif bulan == "12":
    nama_bulan = "Desember"
    hari_maks = 31
else:
    nama_bulan = "Bulan tidak valid"
    hari_maks = 0
  
# Validasi apakah tanggal berada di rentang yang sah sesuai bulannya
if tanggal_angka < 1 or tanggal_angka > hari_maks:
    tanggal_status = "Tanggal tidak valid"
else:
    tanggal_status = tanggal

#Menampilkan hasil akhir
print(f"Tanggal lahir ASN: {tanggal_status} {nama_bulan} {tahun}")
