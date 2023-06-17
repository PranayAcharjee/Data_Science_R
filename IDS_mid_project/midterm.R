#Importing the Dataset
dataset<-read.csv("Dataset.csv")
print(dataset)

#Finding Missing(null) values
colSums(is.na(dataset))

#Dealing with Missing Value

dataset$Age <- ifelse(is.na(dataset$Age),mean(dataset$Age, na.rm = TRUE),dataset$Age)
dataset$weight.kg. <- ifelse(is.na(dataset$weight.kg.),mean(dataset$weight.kg., na.rm = TRUE),dataset$weight.kg.)
dataset$Delivery_number <- ifelse(is.na(dataset$Delivery_number),mean(dataset$Delivery_number, na.rm = TRUE),dataset$Delivery_number)
dataset$Delivery_time <- ifelse(is.na(dataset$ Delivery_time  ),mean(dataset$ Delivery_time  , na.rm = TRUE),dataset$ Delivery_time  )
dataset$Caesarian<- ifelse(is.na(dataset$Caesarian),mean(dataset$Caesarian, na.rm = TRUE),dataset$Caesarian)

print(dataset)

#Finding Missing("") values
dataset[ ,6]

#Using most frequent value for replace Missing("") values 
dataset<-edit(dataset)
print(dataset)

#Dealing with Data Formats
dataset$Age <- as.numeric(format(round(dataset$Age, 0)))
dataset$weight.kg.<- as.numeric(format(round(dataset$weight.kg., 0)))
dataset$Delivery_number<- as.numeric(format(round(dataset$Delivery_number, 0)))
dataset$Delivery_time<- as.numeric(format(round(dataset$Delivery_time, 0)))
dataset$Caesarian<- as.numeric(format(round(dataset$Caesarian, 0)))
print(dataset)


#To find out Outliers

plot(dataset$Age, col=5)
plot(dataset$weight.kg., col=5)

#Univariate Exploration

#For Age attribute

mean(dataset$Age)
median(dataset$Age)
var(dataset$Age)
sd(dataset$Age)

#For weight.kg. attribute
mean(dataset$weight.kg.)
median(dataset$weight.kg.)
var(dataset$weight.kg.)
sd(dataset$weight.kg.)



#Analysis single attributes

hist(dataset$Delivery_number)
hist(dataset$Delivery_time)
hist(dataset$Caesarian)

#Install packages

install.packages("dplyr")
install.packages("matrixStats")
library(matrixStats)




  




