Correlation_Analysis_1_ <- read_excel("C:/Users/ADMIN/Downloads/Correlation Analysis (1).xlsx")
attach(Correlation_Analysis_1_)
str(Correlation_Analysis_1_)
library(nortest)
shapiro.test(Attitude)
shapiro.test(Affordability)
shapiro.test(`Technical Knowledge`)
shapiro.test(`Adoption of ERP`)
cor.test(`Adoption of ERP`,Attitude)
#p-value=0.008253 less than 0.05 so alternate accepts;So there is relation ship between Attitude and Adopation of EPR
# 57.311% there is direct Realtionship between attitude and Adopation od EPR
cor.test(`Adoption of ERP`,Affordability,method = "spearman")
#note= We have to calculate the cor.test for every clounm to find the realation between them'
#
