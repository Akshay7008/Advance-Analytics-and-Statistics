#Two Way ANOVA
Two_way_ANOVA <- read_excel("C:/Users/ADMIN/Downloads/Two_way_ANOVA.xlsx")
attach(Two_way_ANOVA)
str(Two_way_ANOVA)
Two_way_ANOVA$Place=as.factor(Two_way_ANOVA$Place)
Two_way_ANOVA$Education=as.factor(Two_way_ANOVA$Education)
str(Two_way_ANOVA)
library(nortest)
shapiro.test(Sales)
#as p-values more than 0.05 so data is normally distributed
model<-aov(Sales~Place+Education+Place*Education,data = Two_way_ANOVA)
summary(model)
#p-value of Place=0.07937 which is less tha 0.05 i.e alternate is accepts and there is significant differnce between place and sales
#p-value of education =0.000355 less tha 0.05 i.e alternate is accepts and there is significant differnce between place and sales
#p-value of place*Education=0.955850 which is more than 0.05 so null accepst so tere is no siginificant difference with sales
model1=aov(Sales~Place+Education+,data = Two_way_ANOVA)
TukeyHSD(model1)