import math

# titik pusat cluster
A = (2, 1, 3)
B = (1, -4, 6)
C = (-2, 3, -2)

# input titik U
x1 = float(input("Masukkan x1: "))
x2 = float(input("Masukkan x2: "))
x3 = float(input("Masukkan x3: "))

U = (x1, x2, x3)

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

# menentukan cluster
if dA <= dB and dA <= dC:
    print("Titik U masuk cluster A")
elif dB <= dA and dB <= dC:
    print("Titik U masuk cluster B")
else:
    print("Titik U masuk cluster C")
