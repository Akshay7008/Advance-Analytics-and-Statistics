#Stepwise Backward Regression
MR1 <- read_excel("C:/Users/ADMIN/Downloads/MR1.xlsx")
attach(MR1)
fitall <-lm(Buying~.,data = MR1)
fitfirst <-lm(Buying~1,data = MR1)

step(fitall,direction = "backward" )

#Start:  AIC=-614.38
#Buying ~ Attitude + Awarness + Perception + Cost + Rating

#Step:  AIC=-615.43
#Buying ~ Attitude + Awarness + Perception + Cost
#As there is decrese in error the backward regression stop and this explain that the rating has no impact on buying