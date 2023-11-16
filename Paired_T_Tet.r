#Paired T.Test
pair_t <- read_excel("C:/Users/ADMIN/Downloads/pair_t.xlsx")
attach(pair_t)
library(nortest)
shapiro.test(Diff)
#p-value = 0.06628 >0.05 i.e Null Accepts means Data is Normally Distributed
plot(density(Diff))
t.test(Bef,Aft,mu=0,paired = T)
#p-value = 0.001327 <0.05 i.e Alternate Accepts
#means there is Signifiacant differnece After and Before Advertisement
#mean diff is: -0.8387097