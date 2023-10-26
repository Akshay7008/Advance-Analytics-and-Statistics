# T.Test (ONE-SAMPLE)

Indian_oil_ethanol <- read_excel("C:/Users/dbda/Downloads/Indian oil_ethanol.xlsx")
attach(Indian_oil_ethanol)
#To check the data is normalily distributed
library(nortest)
shapiro.test(`Mileage with ethanol`)
# p.value=0.8262 which is more than 0.05 that is null hypothesis is accepts
# ie data is normally distributed
# Histogram.....
hist(`Mileage with ethanol`)
# To see outliers we draw BOXPLOT....
boxplot(`Mileage with ethanol`)
#Skewness and Kurtosis also show data is normally distributed or not
# is sknewness is near to 0 and kurtosis is near to 3
library(moments)
skewness(`Mileage with ethanol`)
#value=0.0748 near to 0 
kurtosis(`Mileage with ethanol`)
#value=2.44 near to 3
#As our data is normally distributed we can do T.test
t.test(`Mileage with ethanol`,mu=12)
# p.value=7.768e-5 which is less than 0.05 ie alternate is accepts
#ie there is significant differenve in mileage after the use of ethnaol
#mean of x=16.6