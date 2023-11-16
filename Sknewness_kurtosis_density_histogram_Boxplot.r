Indian_oil_ethanol <- read_excel("C:/Users/ADMIN/Downloads/Indian oil_ethanol.xlsx")
attach(Indian_oil_ethanol)
library(moments)
#Skewness must be near zero for normela Distribution of data
skewness(`Mileage with ethanol`)
#Kurtosis must be near 3 for normela Distribution of data
kurtosis(`Mileage with ethanol`)
#Density Plot
plot(density(`Mileage with ethanol`))

#Histrogram
hist(`Mileage with ethanol`)
#Boxplot
boxplot(`Mileage with ethanol`)