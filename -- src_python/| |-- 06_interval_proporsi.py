import math

def interval_konfidensi(p_topi, n, alpha):

    # validasi proporsi
    if p_topi < 0 or p_topi > 1:
        print("error: proporsi harus berada pada rentang 0 dan 1")
        return

    # validasi alpha
    if alpha == 0.10:
        z = 1.645
    elif alpha == 0.05:
        z = 1.96
    else:
        print("error: nilai alpha harus 0.05 atau 0.10")
        return

    # menghitung margin of error
    margin = z * math.sqrt((p_topi * (1 - p_topi)) / n)

    # menghitung interval konfidensi
    batas_bawah = p_topi - margin
    batas_atas  = p_topi + margin

    print("batas bawah =", batas_bawah)
    print("batas atas =", batas_atas)
    print("interval konfidensi = (", batas_bawah, ",", batas_atas, ")")

# input manual
p_topi = float(input("Masukkan proporsi sampel (p_hat): "))
n     = int(input("Masukkan ukuran sampel (n): "))
alpha = float(input("Masukkan nilai alpha (0.05 atau 0.10): "))

interval_konfidensi(p_topi, n, alpha)
