# Menerima input NIP dari pengguna
nip = input("Masukkan NIP ASN:")
# Ekstrak tahun, bulan, dan tanggal menggunakan slicing (semuanya bertipe string)
tahun = nip[0:4]
bulan = nip[4:6]
tanggal = nip[6:8]

#Percabangan untuk membatasi tanggal
if int(tanggal) >= 1 and int(tanggal) <= 31:
  tanggal_lahir = tanggal
else:
    tanggal_lahir = "Tanggal lahir error"

#Percabangan untuk menentukan nama bulan menggunakan perbandingan string
if bulan == "01":
    nama_bulan = "Januari"
elif bulan == "02":
    nama_bulan = "Februari"
elif bulan == "03":
    nama_bulan = "Maret"
elif bulan == "04":
    nama_bulan = "April"
elif bulan == "05":
    nama_bulan = "Mei"
elif bulan == "06":
    nama_bulan = "Juni"
elif bulan == "07":
    nama_bulan = "Juli"
elif bulan == "08":
    nama_bulan = "Agustus"
elif bulan == "09":
    nama_bulan = "September"
elif bulan == "10":
    nama_bulan = "Oktober"
elif bulan == "11":
    nama_bulan = "November"
elif bulan == "12":
    nama_bulan = "Desember"
else:
    nama_bulan = "Bulan tidak valid"

# Tampilkan hasil akhir ke layar
print(f"Tanggal lahir ASN: {tanggal_lahir} {nama_bulan} {tahun}")
