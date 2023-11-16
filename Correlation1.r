#Correlation Analysis
#Both the data should be mertic or contionous
SR_1_ <- read_excel("C:/Users/ADMIN/Downloads/SR (1).xlsx")
attach(SR_1_)
library(nortest)
shapiro.test(advt)
shapiro.test(sales)
Boxplot(sales)
cor.test(advt,sales,method = "spearman")
#As data is not normally distributed so we have to use the method Spearman
#p-value=0.8.203 which is more than 0.05 so null hypothesis is accepts
#so there is no siginificant relation between sales and advt
cor(advt,sales)