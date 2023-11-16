#Stepwise Forward Regression
MR1 <- read_excel("C:/Users/ADMIN/Downloads/MR1.xlsx")
attach(MR1)
fitall <-lm(Buying~.,data = MR1)
fitfirst <-lm(Buying~1,data = MR1)

step(fitfirst,direction = "forward" ,scope = formula(fitall))
#Step:  AIC=-492.24
#Buying ~ Awareness
#error increases the explanation power decrees
#error is-492.25 explain more
#Step:  AIC=-590.84
#Buying ~ Awareness + Attitude
#error is-590.84 explain more
#Step:  AIC=-614.85
#Buying ~ Awareness + Attitude + Perception
#error is-614.85 explain more
#Step:  AIC=-615.43
#Buying ~ Awareness + Attitude + Perception + Cost
#error is-615.43 explain more

#Equation is y=0.44774+0.46039(Awareness)+0.37246(Attitude)+0.19440(Perception)+0.03561(0.03561)