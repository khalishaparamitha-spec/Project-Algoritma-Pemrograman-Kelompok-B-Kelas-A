#Menghitung jumlah kata dan jumlah kalimat
#Memisahkan teks berdasarkan spasi
def hitung_kata(teks):
   kata = teks.split()
   return len(kata)
#Memisahkan teks berdasarkan tanda titik
def hitung_kalimat(teks):
   bagian = teks.split(".")
   jumlah = len([b for b in bagian if b.strip() != ""]) #Menyaring bagian kosong
   return jumlah
#Input dari pengguna
teks = input("Masukkan teks: ")
#Proses perhitungan
jumlah_kata = hitung_kata(teks)
jumlah_kalimat = hitung_kalimat(teks)
#Output hasil
print(f"Teks tersebut memuat {jumlah_kalimat} kalimat dan {jumlah_kata} kata.")
