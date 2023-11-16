CR121<- read_excel("C:/Users/ADMIN/Downloads/Correlation Analysis1 (1).xlsx")
attach(CR121)
library(nortest)
shapiro.test(Attitude)
#p-value=0.893 more than 0.05 so data is noramlly distributed
shapiro.test(Compensation)
#p-value=0.429 more than 0.05 so data is noramlly distributed
shapiro.test(Performance)
#p-value=0.468 more than 0.05 so data is noramlly distributed

#sactter Plot
plot(Attitude,Performance)
plot(Compensation,Performance)

#Simple Regression
model1=lm(Performance~Compensation,data = CR121)
summary(model1)
#p-value=0.0133 less than 0.05 so there impact of compensation on performanace
#r.squr=24.81 impact
model2=lm(Performance~Attitude,data = CR121)
summary(model2)
#p-value=9.81e-06 less than 0.05 so there is impact of Attitude on performane
#59.64% impact
