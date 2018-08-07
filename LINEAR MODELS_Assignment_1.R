setwd("D://ACADGILD//11 Linear Models//Assignments//INPUTS")
bank <- read.table("bank.csv", sep=";", header=T)
#Problem a
install.packages("Amelia")
library(Amelia)
missmap(bank)
#As per the Missing map of bank Df Missing rate is 0% so there are no miising values in this data.
#We can verify the same with below command.
isTRUE(is.na(bank))
library(ggplot2)

#Problem b
ggplot(bank, aes(x=job, y=age, fill=job)) +   geom_boxplot(alpha=0.6) +ggtitle("Age based on job")

#Problem C
#Using chi-square 
#Null hypothesis : Ho: No relation 
#Ha: Relation between job and marital
chisq.test(bank$job ,bank$marital)
#Pearson's Chi-squared test

#data:  bank$job and bank$marital
#X-squared = 373.18, df = 22, p-value < 2.2e-16
#As p-value is less than 0.05 we can reject Null hypothesis. There is significant relation between job and marital.

#Probllem d
chisq.test(bank$job ,bank$education)

#Pearson's Chi-squared test
#data:  bank$job and bank$education
#X-squared = 2840, df = 33, p-value < 2.2e-16
#As p-value is less than 0.05 we can reject Null hypothesis. There is significant relation between job and education.