#One Sample T-Test
attach(Indian_oil_ethanol)
library(nortest)
shapiro.test(`Mileage with ethanol`)
#p-value=0.8262 more than 0.05 data is normally distributed
#so null hypothesis accepts(Tha data is not deviating from Normal distribution)
t.test(`Mileage with ethanol`,mu=12)
#p-value = 7.768e-05 <0.05
#there is significant diff Alternate accepts
#mean=16.6 ie diff=16.6-12=4.4