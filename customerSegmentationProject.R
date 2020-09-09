rm(list=ls())#remove all the variablw previoulsy in storage
mydata<-read.csv('Mall_Customers.csv')
str(mydata)
names(mydata)
head(mydata)
summary(mydata)
sd(mydata$Age,na.rm=TRUE)
summary(mydata$Annual.Income..k..)
sd(mydata$Annual.Income..k..)
sd(mydata$Spending.Score..1.100.)
a=table(mydata$Gender)
barplot(a,main = "using barplot to display gender comparision",
        ylab="count",xlab ="gender",col = rainbow(2),legend=rownames(a))
pct=round(a/sum(a)*100)
lbs=paste(c("Female","Male")," ",pct,"%",sep=" ")
install.packages('plotrix')
library(plotrix)
pie3D(a,labels=lbs,main="PIE CHAR DEPICTPING THE RATIO OF FEMALE AND MALE")

summary(mydata$Age)

hist(mydata$Age,col="blue",
     main="HISTOGRAM TO SHOW THE AGE CLASS",xlab="AGE CLASS",ylab="FREQUENCY",labels=TRUE)
boxplot(mydata$Age,col="#ff0066",main="THE BOXPLOT FOR THE DESCRIPTIVE ANALYSIS OF AGE")

#MAX AGE  IS 70 AND MIN IS 18 AND AVERAGE IS LESS THEN THE 40

# DENSITY PLOT FOR ANNUAL INCOME 

plot(density(mydata$Annual.Income..k..),
     col="red",main="DENSITY PLOT FOR ANNUAL INCOME",
     xlab="ANNUAL INCOME CLASS",
     ylab="DENSITY")
polygon(density(mydata$Annual.Income..k..),
        col="#ccff66")
library(purrr)
set.seed(123)
# function to calculate total intra-cluster sum of square 
iss <- function(k) {kmeans(mydata[,3:5],k,iter.max=100,nstart=100,algorithm="Lloyd" )$tot.withinss}
k.values <- 1:10
iss_values <- map_dbl(k.values, iss)
plot(k.values, iss_values,
     type="b", pch = 19, frame = FALSE, 
     xlab="Number of clusters K",
     ylab="Total intra-clusters sum of squares")















