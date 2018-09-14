library(dplyr)
women %>% head(n=5)
head(women, n=5)

mtcars
head(mtcars)
names(mtcars)
mtcars %>% group_by(gear) %>% summarise(mean(mpg), max(mpg))
mtcars %>% group_by(gear,carb) %>% summarise(mean(mpg),max(mpg),min(hp))
mtcars %>% group_by(gear, carb) %>% summarise_all(mean)
mtcars %>% filter(mpg>25)%>% select(mpg, gear)
mtcars %>% group_by(gear) %>% summarise_if(is.numeric,mean)
sales %>% group_by(region) %>% summarise_if(is.numeric,mean)
?summarise_if
pull(mtcars,gear)
mtcars %>% select(gear)
