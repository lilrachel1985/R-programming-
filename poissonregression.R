#We use the data set “warpbreaks”
#breaks-> predictor variable
#wol and tension --> response variable
input<-warpbreaks
print(head(input))
#using the the glm() function
#Creating the poisson regression model
output <-glm(formula = breaks ~ wool + tension,
             data = warpbreaks, family = poisson)
print(summary(output))

output