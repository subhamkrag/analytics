#vector

x = c(1,2,3)
x1 = 1:1000000
length(x1)
x
x1
 x2= seq(10,100,2)
x2
?seq
x3=seq(from=10,to=100,by=2) 
x3
 

#numeric vector ----
#using normal distribution mean 60 standard devaition 10

(marks = rnorm(30, mean=60, sd=10))#round brackets at end helps in printing with creation
?rnorm
marks
mean(marks)
mode(marks) #no mode
median(marks)
sd(marks)
var(marks)

#we will see later as to how to calculate mode which is the place having high frequency
summary(marks)
range(marks)


#properties of vectors
length(marks)
?str
str(marks)
class(marks)
hist(marks)
plot(density(marks))
#we can merge both also we will see later


#create character vector----
(names=c('Ram','Shyam','Robin'))
names
length(names)
mean(names)
class(names)
summary(names)


#new actegory
gender=c('m','f','m')
summary(gender)
genderF=factor(gender)
summary(genderF)


#ordinal type
(grades=c('A','B','C','D','A','D'))
gradesF=factor(grades,ordered=T)
summary(gradesF)
gradesF


gradesF1=factor(grades,ordered=T,levels=c('D','B','A','C'))
summary(gradesF1)
gradesF1
table(gradesF1)
table(gender)
barplot(table(gradesF1))
pie(table(gradesF1))
median(gradesF1)

#logical vector----

married=c(TRUE,FALSE,T,F,T,F,T)
married
sum(married)#true =1 and false=0
table(married)
class(married)
summary(married)
barplot(table(married))



#how many students go more than 60?
#subset of marks
marks
trunc(marks); round(marks,1); floor(marks); ceiling(marks)
marks1=trunc(marks)
marks1
marks1[1]
marks1[18]
marks[1:5]
marks1[-2]
marks1[c(1,5,10,30)]
marks1[-c(10:15)]
mean(marks1[c(1,5,10,30)])
marks1>60
marks1[marks1>60]
marks1[marks1>60 & marks1<80]

#setseed is used to generate the same pattern always

set.seed(1234)

gender2 = sample(c('M','F'),size=2)
gender2
gender3=sample(c('M','F'),size=1000000,replace=T,prob=c(.6,.4))#if we run this again and again different utputds will com always

gender3
table(gender3)
prop.table(table(gender3))
