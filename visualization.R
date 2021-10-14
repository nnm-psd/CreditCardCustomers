setwd("D:/Work/Data mining")

# load dataset
clients = read.table("BankChurners.csv", header = TRUE, sep = ",")

# delete the last two columns
clients <- clients[1:21]
clients

# division of grphic window
#par(mfrow=c(2,2))
par(mfrow=c(1,1))

# age of clients
age <- clients["Customer_Age"]
age <- as.data.frame(age)
is.data.frame(age)
hist(clients[,"Customer_Age"],main="Age of clients",prob=FALSE,xlab="Age")
summary(age[1])


# gender of clients
gender <- clients["Gender"]
gender <- as.data.frame(gender)
barplot(table(clients[,"Gender"]),main="Gender of clients",xlab="Gender")
hist(gender)

#  dependent count
dc <- clients["Dependent_count"]
dc <- as.data.frame(dc)
barplot(table(clients[,"Dependent_count"]),main="Dependent Count")

# Education_Level
el <- clients["Education_Level"]
el <- as.data.frame(el)
barplot(table(clients[,"Education_Level"]),main="Education Level")

# Income_Category
ic <- clients["Income_Category"]
ic <- as.data.frame(ic)
barplot(table(clients[,"Income_Category"]),main="Income_Category")

# Marital_Status
ms <- clients["Marital_Status"]
ms <- as.data.frame(ms)
barplot(table(clients[,"Marital_Status"]),main="Marital_Status")

# Credit_Limit
cl <- clients["Credit_Limit"]
cl <- as.data.frame(cl)
summary(cl)

