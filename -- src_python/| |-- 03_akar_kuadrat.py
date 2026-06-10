#Program 3
#Fungsi Akar-Akar Persamaan Kuadrat
def hitung_akar(a, b, c):
    d = b**2 - 4*a*c
    if d > 0:
        print("Persamaan Memiliki Dua Akar Real yang Berbeda:")
        print("x1 =", round((-b + math.sqrt(d)) / (2*a),3))
        print("x2 =", round((-b - math.sqrt(d)) / (2*a),3))
    elif d == 0:
        x = -b / (2*a)
        print("Persamaan Memiliki Akar Real Kembar:")
        print("x1 = x2 =", round(x),3)
    else:
        real = -b / (2*a)
        imaj = math.sqrt(abs(d)) / (2*a)
        print("Persamaan Akar-Akar Imajiner:")
        print("x1 =", round(real, 3), "+", round(imaj, 3), "i")
        print("x2 =", round(real, 3), "-", round(imaj, 3), "i")

#Memasukkan Nilai Variabel dari Persamaan Kuadrat
a = float(input("Masukkan nilai a: "))
b = float(input("Masukkan nilai b: "))
c = float(input("Masukkan nilai c: "))

#Menampilkan Bentuk Persamaan
print("Persamaan:", a, "x² +", b, "x +", c, "= 0")

#Menampilkan Hasil
hitung_akar(a, b, c)
