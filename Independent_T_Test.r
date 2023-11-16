#independent T.Test
independent_t <- read_excel("C:/Users/ADMIN/Downloads/independent_t.xlsx")
attach(independent_t)
library(nortest)
shapiro.test(Mumbai)
shapiro.test(Delhi)
#p-value = 0.0007733 for Mumbai <0.05 ie data is  not normally distributed
#p-value = 0.0002928 for Delhi <0.05 ie data is  not normally distributed
plot(density(Mumbai))
plot(density(Delhi))
t.test(Mumbai,Delhi,mu=0)
#p-value = 0.0013 <0.05 ie There is Significant Difference