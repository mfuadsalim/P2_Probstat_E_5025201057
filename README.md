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
  
  ![Soal2](https://user-images.githubusercontent.com/80630201/170877835-72bb52f7-f7c2-4bec-8169-58894338d9d5.png)
  
  

### A. Apakah Anda setuju dengan klaim tersebut?

  Setuju, karena H0 yaitu mobil rata-rata dikemudikan lebih dari 20.000km/tahun
  
### B. Jelaskan maksud dari output yang dihasilkan!

  ![Soal 2B](https://user-images.githubusercontent.com/80630201/170877838-1eeb7668-f337-4d3f-8336-96d43436bac1.png)

  
  
### C. Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!


  Tidak adanya level yang siginificant. Namun p-value yang bernilai 1.425032e-19 sudah cukup kecil. Maka didapat keputusan bahwa H0 yaitu mobil rata-rata dikemudikan lebih dari 20.000km/tahun.
  
# Soal 3 
 Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.
 
 ![tabel soal 3](https://user-images.githubusercontent.com/80630201/170878263-d124af4e-b555-42ac-9250-047d92250174.png)

 
 Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah :
 
 ### A. H0 dan H1
 
 Berdasarkan deskripsi dan data yang terlampir, maka dapat disusun hipotesis H0 dan H1 sebagai berikut.
- H0 ← μ1 = μ2 (rata-rata saham di Bandung sama dengan di Bali)
- H1 ← μ1 ≠ μ2 (rata-rata saham di Bandung tidak sama dengan di Bali)
- 
 ### B. Hitung Sampel dan Statistik 
 
 Solusi dilakukan dengan menggunakan fungsi `tsum.test()` dengan parameter sesuai dengan data pada tabel terlampir. Fungsi tersebut menghasilkan nilai dari sampel statistik.
 
 Code :
 
 ```R
 tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 19, mean.y = 1.79, s.y = 1.32, n.y = 27,  alternative = "greater", var.equal = TRUE)
 ```
 
 Hasil :
 
 ![Soal 3 B](https://user-images.githubusercontent.com/80630201/170878266-5dd0aabb-2aea-45ae-83aa-a8415a34a627.png)
 
 
 ### C. Lakukan Uji Statistik (df = 2)
 
 Menggunakan sebuah  package library Mosaic untuk membuat solusi permasalahannya.
 
 Code :
 
 ```R
 install.packages("mosaic")
 library(mosaic)
 ```
 
 Selanjutnya, digunakan fungsi `plotDist()` untuk mendapatkan gambaran atau visualisasi dari statistik dengan derajat bebas sebesar 2.
 
 Code : 
 
 ```R
 plotDist(dist = 't', df = 2, col = "red")
 ```
 Hasil : 
 
 ![Soal 3 C](https://user-images.githubusercontent.com/80630201/170878267-367ae6be-69ca-46ac-ba48-59693a91492d.png) 
 
 ### D. Nilai Kritikal
  Digunakan fungsi `qchisq()` dengan nilai df sesuai dengan yang telah terlampir untuk mendapatkan nilai kritikal.
  
  Code :
  
  ```R
  qchisq(p = 0.05, df = 2, lower.tail = FALSE)
  ```
  
  Hasil : 
  
  ![Soal 3 D](https://user-images.githubusercontent.com/80630201/170878269-3b3ddc1a-0cd6-4997-8beb-10533cce161c.png)
  ![Soal3](https://user-images.githubusercontent.com/80630201/170878274-169eb923-6be2-4c2f-a897-6de6d91e4581.png)
  
 ### E. Keputusan 
 Teori keputusan adalah teori formal pengambilan keputusan di bawah ketidakpastian. Aksinya adalah `({a}\_{a∈A})` dengan kemungkinan konsekuensinya adalah `({c}_{c∈C}`(tergantung pada keadaan dan tindakan).

Maka keputusan dapat diperoleh dengan fungsi `t.test`
 ### F. Kesimpulan
 
 Kesimpulan yang didapatkan yaitu perbedaan rata-rata yang terjadi tidak ada jika dilihat dari uji statistik.

 Namun, akan ada (meski tidak signifikan) jika dipengaruhi oleh nilai kritikal.
