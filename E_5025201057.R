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

#Soal4

#A

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

#B
bartlett.test(Length ~ Group, data = dataoneway)

#C
model1 = lm(Length ~ Group, data = dataoneway)
anova(model1)

#D Jawaban ada di README.md

#E
model1 <- lm(Length~Group, data=myFile)

anova(model1)

TukeyHSD(aov(model1))

#F
library(ggplot2)
ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + 
  scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")

#Soal5

install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

#A
GTL <- read_csv("https://drive.google.com/u/0/uc?id=1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ&export=download")
head(GTL)
str(GTL)
qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)

#B
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)
anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

#C
data_summary <- group_by(GTL, Glass, Temp) %>% summarise(mean=mean(Light), sd=sd(Light)) %>% arrange(desc(mean))
data_summary

#D
tukey <- TukeyHSD(anova)
tukey

#E
tukey.cld <- multcompLetters4(anova, tukey)
tukey.cld
cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
data_summary
