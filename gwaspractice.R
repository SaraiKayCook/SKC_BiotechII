setwd("~/Desktop/Biotech Grad School/R")
dir.create("GWAS")
setwd("~/Desktop/Biotech Grad School/R/GWAS")
source("https://raw.githubusercontent.com/jiabowang/GAPIT/refs/heads/master/gapit_functions.txt", encoding = "UTF-8")
Yprac <- read.table(file = "http://zzlab.net/GAPIT/data/mdp_traits.txt", header = TRUE)
View(Yprac)
GDprac <- read.table(file = "http://zzlab.net/GAPIT/data/mdp_numeric.txt", header = TRUE)
head(GDprac)[ ,c(1:10)]
GMprac <- read.table(file = "http://zzlab.net/GAPIT/data/mdp_SNP_information.txt", 
                   header = TRUE)
head(GMprac)
GAPITpractice = GAPIT(Y = Yprac[ ,c(1,4)], GD = GDprac, GM = GMprac, PCA.total = 3, model = c("MLM"))
View(GAPITpractice$GWAS)
library(qqman)
library(ggplot2)
resultDia <- read.csv("GAPIT.Association.GWAS_Results.MLM.EarDia.csv", header = T)
head(resultDia)
manhattan(resultDia, main = "Ear diameter", chr = "Chr", bp = "Pos", p = "P.value",
          snp = "SNP", col = c("red", "green"),
          genomewideline = 3.5, highlight = "PZA00453.7")
png("manhattan_practice.png", width = 8, height = 4, units = "in", res = 300)
dev.off()
