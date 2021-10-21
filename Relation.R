setwd("D:/Work/Data mining")

# load dataset
clients = read.table("BankChurners.csv", header = TRUE, sep = ",")

# delete the last two columns
clients <- clients[1:21]
clients

par(mfrow=c(1,1))

# Relation between age and income

age <- clients["Customer_Age"]
age <- as.data.frame(age)
dim(age)

ic <- clients["Income_Category"]
ic <- as.data.frame(ic)
dim(ic)

gender <- clients["Gender"]
gender <- as.data.frame(gender)
typeof(gender)
dim(gender)

plot(clients[,"Credit_Limit"],clients[,"Customer_Age"],type="p",main="Credit and Age",xlab="Credit Limit",ylab="Customer Age",col="red")
plot(clients[,"Gender"="F"],clients[,"Income_Category"],type="p",main="Credit and Age",xlab="Credit Limit",ylab="Customer Age",col="red")


#plot(age,ic,xlab="Age of client",ylab="Income of client")
plot(age,ic)

#Test nhung thu khac

#Male clients with $120K +
clients_mod1<-clients[which(clients$Income_Category %in% c("$120K +")
              | clients$Gender %in% c("M")),]
summary(clients_mod1["Customer_Age"])
hist(clients_mod1[,"Customer_Age"],main="Male $120K +",col='red',xlab="Age")


#Female clients with $120K +
clients_mod2<-clients[which(clients$Income_Category %in% c("$120K +")
                           | clients$Gender %in% c("F")),]
summary(clients_mod2["Customer_Age"])
hist(clients_mod2[,"Customer_Age"],main="Female $120K +",col='green',xlab="Age")

#Conclusion: more female customers earn $120K+

#Income_category
#Keep the unknown column
income <- ordered(clients$Income_Category,levels=c("Less than $40K","$40K - $60K","$60K - $80K","$80K - $120K","$120K +","Unknown"))
#Delete unknown column
income <- ordered(clients$Income_Category,levels=c("Less than $40K","$40K - $60K","$60K - $80K","$80K - $120K","$120K +"))
plot(income)

#Education_Level
#Delete the unknown column
education <- ordered(clients$Education_Level,levels=c("Uneducated","High School","College","Graduate","Post-Graduate","Doctorate"))
plot(education,col='black')


