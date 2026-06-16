import math

def hitung_interval_konfidensi():
    print("=== Program 6: Interval Konfidensi Proporsi Populasi ===\n")

    p_hat = float(input("Masukkan proporsi sampel (p̂): "))

    if p_hat < 0 or p_hat > 1:
        print("Error: Proporsi yang dimasukkan tidak valid! Nilai harus berada di antara 0 dan 1.")
        return

    n = int(input("Masukkan ukuran sampel (n): "))

    print("Pilih tingkat kepercayaan (α):")
    print("  1. α = 10% (z = 1.645)")
    print("  2. α = 5%  (z = 1.96)")
    pilihan = input("Masukkan pilihan (1/2): ")

    if pilihan == "1":
        alpha = 0.10
        z = 1.645
    elif pilihan == "2":
        alpha = 0.05
        z = 1.96
    else:
        print("Error: Pilihan tidak valid!")
        return

    margin = z * math.sqrt((p_hat * (1 - p_hat)) / n)
    batas_bawah = p_hat - margin
    batas_atas  = p_hat + margin

    print(f"\n=== Hasil ===")
    print(f"Proporsi sampel (p̂)  : {p_hat}")
    print(f"Ukuran sampel (n)     : {n}")
    print(f"Tingkat kepercayaan   : {int((1 - alpha) * 100)}% (α = {alpha}, z = {z})")
    print(f"Margin of Error       : {margin:.4f}")
    print(f"Interval Konfidensi   : ({batas_bawah:.4f}, {batas_atas:.4f})")
    print(f"\n→ {batas_bawah:.4f} < p < {batas_atas:.4f}")

hitung_interval_konfidensi()
