import math

# input + validasi
try:
    x1 = float(input("Masukkan x1: "))
    x2 = float(input("Masukkan x2: "))
    x3 = float(input("Masukkan x3: "))
except:
    print("input tidak valid")
    exit()

U = (x1, x2, x3)

# titik pusat cluster
A = (2, 1, 3)
B = (1, -4, 6)
C = (-2, 3, -2)

# fungsi jarak
def jarak(P, Q):
    return math.sqrt((P[0]-Q[0])**2 + (P[1]-Q[1])**2 + (P[2]-Q[2])**2)

# hitung jarak
dA = jarak(U, A)
dB = jarak(U, B)
dC = jarak(U, C)

# tampilkan jarak
print("Jarak ke A:", dA)
print("Jarak ke B:", dB)
print("Jarak ke C:", dC)

# kondisi
if dA == dB or dA == dC or dB == dC:
    if dA == dB and dA == dC:
        print("Jarak sama: A = B = C")
    elif dA == dB:
        print("Jarak sama: A = B")
    elif dA == dC:
        print("Jarak sama: A = C")
    elif dB == dC:
        print("Jarak sama: B = C")

elif dA < dB and dA < dC:
    print("Titik U masuk cluster A")

elif dB < dA and dB < dC:
    print("Titik U masuk cluster B")

elif dC < dA and dC < dB:
    print("Titik U masuk cluster C")
 C")
