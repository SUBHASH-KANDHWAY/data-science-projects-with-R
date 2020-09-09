library(dplyr)
mydata<-read.csv('murders.csv')
optdata<-select(mydata,state,population,murders)
barplot(optdata$population,xlab = 'states',ylab = 'population',main='states vs population',names.arg=optdata$state,col='blue')

