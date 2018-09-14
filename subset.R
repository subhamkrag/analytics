#subset
#subset() is the easiest way to select variables and observatioms
mtcars
#using subset functions
new_data= subset(mtcars, mpg>=20 & mpg<30, select =c(mpg,disp))
new_data


#using subset function part 2
names(mtcars)
head(mtcars)
newdata = subset(mtcars, cyl==6 & disp>150, select=mpg:wt)
newdata

newdata2=mtcars[order(mtcars$mpg), c('mpg','wt')]
newdata2
subset(airquality, select = Ozone:Wind)
subset(airquality, Temp > 80, select = c(Ozone, Temp))
subset(airquality, Temp > 80, select = - Temp)

subset(airquality, Month == 8 & Temp > 90) # better
airquality[airquality$Month == 8 & airquality$Temp > 90, ]