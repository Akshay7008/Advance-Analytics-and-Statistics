MR1 <- read_excel("C:/Users/ADMIN/Downloads/MR1.xlsx")
attach(MR1)

model1 <- lm(Buying~Awarness+Attitude+Perception+Cost+Rating,data = MR1)
summary(model1)
# R-squared:  0.8639 that is 86.39% impact of IDV on Purchase
# 86.39% explain the impact 
#Awareness     0.45181    0.04868   9.281  < 2e-16 ***
#Attitude     0.37526    0.04015   9.346  < 2e-16 ***
#Perception   0.18950    0.03840   4.935  1.3e-06 ***
#Cost         0.03171    0.02267   1.399 0.162826--------> No impact on purchase as p=value is more than 0.05  
#Rating       0.02451    0.02536   0.966 0.33458--------> No impact on purchase as p=value is more than 0.05
#Cost and Rating has no impact on purchase as Null Accepts
#Awareness,Attitiude,Perception has major impact on purchase