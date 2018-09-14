#y depends on x
women
str(women)
cor(women$height,women$weight) #ratio of increase
cov(women$height,women$weight) #+ve cov means that y and x both are increasing
plot(women$height,women$weight)

#create linear model
fit1=lm(weight~ height, data=women)
summary(fit1)
range(women$height)
#weight= -87 +3.45*height
fitted(fit1)
cbind(women,fitted(fit1),residuals(fit1))

names(fit1)
(ndata1=data.frame(height=c(62.5,63.5)))
predict(fit1,newdata=ndata1)


#multiple linear regressions
#mtcars:mpg vs wt,hp
names(mtcars)
fit2= lm(mpg~wt +hp, data=mtcars)
summary(fit2)
range(mtcars$wt)
range(mtcars$hp)
ndata2= data.frame(wt=c(2,3),hp=c(57,250)) #we can use range of wwt and hp to predict
predict(fit2, newdata=ndata2)
cbind(ndata2,predictMPG=predict(fit2,newdata=ndata2))


#install.packages(olsrr)
#https://cran.r-project.org/web/packages/olsrr/olsrr.pdf
#install.packages('olsrr')
library(olsrr)
model <- lm(mpg ~ disp + hp + wt + qsec, data = mtcars)
k <- ols_step_all_possible(model)
plot(k)
k
summary(lm(mpg ~ wt, data=mtcars))
summary(lm(mpg ~ wt+ hp, data=mtcars))