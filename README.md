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
 
# Soal 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya
ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan
kucing putih dengan panjangnya masing-masing.
Jika :

diketahui dataset https://intip.in/datasetprobstat1
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya
sama

Maka Kerjakan atau Carilah:

### A. Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.

Code : 

  ```R
  dataoneway <- read.table("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt",h=T)
  attach(dataoneway)
  names(dataoneway)

  dataoneway$Group <- as.factor(dataoneway$Group)
  dataoneway$Group = factor(dataoneway$Group,labels = c("Orange", "Hitam", "Putih"))

  class(dataoneway$Group)

  Group1 <- subset(dataoneway, Group == "Orange")
  Group2 <- subset(dataoneway, Group == "Hitam")
  Group3 <- subset(dataoneway, Group == "Putih")

  qqnorm(Group1$Length)
  qqline(Group1$Length)

  ```
Hasil : 

  ![code Soal 4 A](https://user-images.githubusercontent.com/80630201/171022376-00e90df6-0123-48d0-8c5b-db6af05faf23.png)
  
  Tabel :
  
  ![Soal 4 A](https://user-images.githubusercontent.com/80630201/171022403-475dbd79-f31b-4cc7-b070-5fad664bfe93.png)


### B. Carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?

Code :

  ```R
  bartlett.test(Length ~ Group, data = dataoneway)
  ```
  
  Hasil : 
  
  ![code Soal 4 B](https://user-images.githubusercontent.com/80630201/171022378-bc700392-6a15-4b00-81d7-f37737daf667.png)
  
### C. Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versusGrup dan beri nama model tersebut model 1.

Code :

  ```R
  model1 = lm(Length ~ Group, data = dataoneway)
  anova(model1)
  ```
  
  Hasil :
  
  ![code Soal 4 C](https://user-images.githubusercontent.com/80630201/171022381-d4eccb44-a975-48cb-8790-4c9273e30133.png)
  
### D. Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkandari H0?
  
  Didapatkan nilai dari p-value yaitu = `0.8054.`
  
### E. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain?

Code : 
  ```R
  model1 <- lm(Length~Group, data=myFile)
  anova(model1)
  TukeyHSD(aov(model1))
  ```
  
Hasil : 
  
  ![code Soal 4 E](https://user-images.githubusercontent.com/80630201/171022385-6c19cffa-3c05-44d2-ac42-83a60b217336.png)
  
  
### F. Visualisasikan data dengan ggplot2

Code :

  ```R
  library(ggplot2)
  ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + 
  scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")

  ```
  
Hasil :

  ![code Soal 4 F](https://user-images.githubusercontent.com/80630201/171022362-591f9c14-5fbc-4fc5-aff6-d34d834f50d6.png)
  
  Tabel :
  
  ![Soal 4 F](https://user-images.githubusercontent.com/80630201/171022397-243bcdc9-d723-4ecf-b977-02530770bb0b.png)
  

# Soal 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk
mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca
pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan
dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil
Eksperimen. Dengan data tersebut:

### A. Buatlah plot sederhana untuk visualisasi data

  Code :

  ```R
  GTL <- read_csv("https://drive.google.com/u/0/uc?id=1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ&export=download")
  head(GTL)
  str(GTL)
  qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)
  ```

  Hasil :

  ![code Soal 5 A](https://user-images.githubusercontent.com/80630201/171022744-f226f67e-96c1-4490-95c8-683edbcd429e.png)


  Tabel :
  
  ![Soal5 A](https://user-images.githubusercontent.com/80630201/171022738-7a39fc87-6da5-4477-a208-37e2ddb7d59b.png)

### B. Lakukan uji ANOVA dua arah

  Code :
  
   ```R
   GTL$Glass <- as.factor(GTL$Glass)
   GTL$Temp_Factor <- as.factor(GTL$Temp)
   str(GTL)
   anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
   summary(anova)
   ```
   
  Hasil : 
  
  ![code Soal 5 B](https://user-images.githubusercontent.com/80630201/171022747-3f47265a-3d7f-40fa-8694-067276a64bb1.png)

### C. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
  
  Code :
  
  ```R
  data_summary <- group_by(GTL, Glass, Temp) %>% summarise(mean=mean(Light), sd=sd(Light)) %>% arrange(desc(mean))
  data_summary
  ```
 
  Hasil :
  
  ![code Soal 5 C](https://user-images.githubusercontent.com/80630201/171022748-a47d68c4-527e-4a08-b017-027d29393d80.png)
  
  
### D. Lakukan uji Tukey

  Code :
  
  ```R
  tukey <- TukeyHSD(anova)
  tukey
  ```
  
  Hasil :
  
  ![code Soal 5 D](https://user-images.githubusercontent.com/80630201/171022756-92118f9f-adb2-4a8f-8292-11e45a3c61a6.png)
  
  
### E. Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey
  
  Code :
   ```R
   tukey.cld <- multcompLetters4(anova, tukey)
   tukey.cld
   cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
   data_summary$Tukey <- cld$Letters
   data_summary
   ```
   
  Hasil :
  
  ![code Soal 5 E](https://user-images.githubusercontent.com/80630201/171022728-70b796ad-b48d-468c-819c-210b1da4248e.png)

