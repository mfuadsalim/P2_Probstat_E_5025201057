#Soal1
#A
before<-c(78, 75, 67, 77, 70, 72, 78, 74, 77)
after<-c(100, 95, 70, 90, 90, 90, 89, 90, 100)

diff <- after-before
diff
mean(diff)
sd(diff)

#B
t.test(after,before,paired = TRUE )

#C
#Jawaban Ada di README.md


#Soal2
standardeviasi = 3900
n = 100
xbar = 23500
miu = 20000

z = ((xbar-miu)/(standardeviasi/sqrt(n)))
pvalue = pnorm(-abs(z))
pvalue


#Soal3

#A Jawaban ada di README.md

#B
install.packages("BSDA")
library(BSDA)
tsum.test(mean.x = 3.64, s.x = 1.67, n.x = 19, mean.y = 1.79, s.y = 1.32, n.y = 27,  alternative = "greater", var.equal = TRUE)

#C 
install.packages("mosaic")
library(mosaic)

plotDist(dist = 't', df = 2, col = "red")

#D
qchisq(p = 0.05, df = 2, lower.tail = FALSE)

#E Jawaban ada di README.md

#F Jawaban ada di README.md
