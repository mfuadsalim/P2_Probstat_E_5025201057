# P2_Probstat_E_5025201057

Repository Praktikum 2 Probabilitas dan Statistika 

## `Muhammad Fuad Salim - 5025201057 - Probstat E`


# Soal 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap
kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel
sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat
kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut
diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali
kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden
mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴 

Tabel data

![tabel soal 1](https://user-images.githubusercontent.com/80630201/170877453-04fba31a-e674-437b-b13d-379233adf1ac.png)

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari
responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah
melakukan aktivitas 𝐴 sebanyak 70.

</br>

### A. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas

*Pertama*, kita akan memasukkan data yang telah ada ke dalam variabel sesuai pengelompokannya.

Code :

  ```R

  before<-c(78, 75, 67, 77, 70, 72, 78, 74, 77)
  after<-c(100, 95, 70, 90, 90, 90, 89, 90, 100)
  ```
  
  *Kedua*, kita akan mencari selisih dari antar data dengan index yang sama. Kemudian, dilakukan pencarian rata-rata dari selisih-selisih tersebut untuk digunakan dalam mencari nilai standar deviasinya.
  
  Code : 
  
  ```R
  diff <- after-before
  diff
  mean(diff)
  sd(diff)
  ```
  
  Hasil Code : 
  
  ![Soal1 A](https://user-images.githubusercontent.com/80630201/170877458-ee1d0fd9-9761-48f7-8f53-e035023bb81c.png)
  
  </br>
  
 ### B. Carilah nilai t (p-value)

  Untuk mencari nilai t (p-vlaue) kita akan menggunakna fungsi t.test dengan parameter masukan data yaitu data kelompok yang telah dikelompokkan pada poin sebelumnya.
  
  
  Code :
  
  ```R
  t.test(after,before,paired = TRUE )
  ```
  
  Hasil : 
  
  ![Soal1 B](https://user-images.githubusercontent.com/80630201/170877460-03af6e3d-57f8-49fd-b884-f5c58aaf0571.png)
  
  ### C. Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”
  
  Berdasarkan hasil dari poin sebelumnya, diketahui bahwa nilai probabilitas dari uji 𝑡 (p-value) adalah 6.003e-05 atau 0.00006003. Karena nilai probabilitas tersebut lebih kecil dibandingkan tingkat signifikansi 𝛼 = 0.05, maka hipotesis nol ditolak dan hipotesis alternatif diterima.

Hal ini berarti terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴 pada tingkat signifikansi 5%.

</br>

# Soal 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.
Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk
mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata
23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul).

  Input data yang telah ada :
  
  Code : 
  
  ```R
  standardeviasi = 3900
  n = 100
  xbar = 23500
  miu = 20000
  ```
  
  Mencari *p-value* :
  
  Code : 
  
  ```R
  z = ((xbar-miu)/(standardeviasi/sqrt(n)))
  pvalue = pnorm(-abs(z))
  pvalue
  ```
  
  Hasil *p-value* : 
  
  gambar
  
  

### A. Apakah Anda setuju dengan klaim tersebut?

  Setuju, karena H0 yaitu mobil rata-rata dikemudikan lebih dari 20.000km/tahun
  
### B. Jelaskan maksud dari output yang dihasilkan!

  gambar
  
  
### C. Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!


  Tidak adanya level yang siginificant. Namun p-value yang bernilai 1.425032e-19 sudah cukup kecil. Maka didapat keputusan bahwa H0 yaitu mobil rata-rata dikemudikan lebih dari 20.000km/tahun.
