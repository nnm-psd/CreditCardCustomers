setwd("D:/Work/Data mining")

clients = read.table("BankChurners.csv", header = TRUE, sep = ",")

install.packages("FactoMineR")
library("FactoMineR")
res.pca = PCA(clients)

plot.PCA(res.pca);



