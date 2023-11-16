One_Way_Anova_CBSE_1_ <- read_excel("C:/Users/ADMIN/Downloads/One_Way_Anova_ CBSE (1).xlsx")
attach(One_Way_Anova_CBSE_1_)
str(One_Way_Anova_CBSE_1_)
One_Way_Anova_CBSE_1_$City=as.factor(One_Way_Anova_CBSE_1_$City)
library(nortest)
shapiro.test(Marks)
plot(density(Marks))
shapiro.test(City)
#Check Homogenity
library(car)
leveneTest(One_Way_Anova_CBSE_1_$Marks,One_Way_Anova_CBSE_1_$City)
# P-value =0.6957 which is more than 0.05 i.e the Null is accepts and the both tha data are homogenous
model <-aov(Marks~City,data = One_Way_Anova_CBSE_1_)
summary(model)
#p-value=2.46e-06 i.e value is less than 0.05
#so alternate hypothesis is accepts so there is significant differnce city and marks