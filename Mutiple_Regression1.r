#mutiple Regression 
MR121<- read_excel("C:/Users/ADMIN/Downloads/Correlation Analysis1 (1).xlsx")
attach(MR121)
model3=lm(Performance~Attitude+Compensation,data = MR121)
summary(model3)
#p.value=0.000342 of Attitude i.e less than 0.05 so alternate accepts 
#p.value=0.8274 of compensation more than 0.05 so null accepts
#59.74% imapct of Attitude and Compenstion on performance
model4=lm(Performance~Attitude+Compensation+Attitude*Compensation,data = MR121)
summary(model4)
#Attitude*Compensation p.value=0.4904 more than 0.05 so null accepts 
#there is no impact on performance