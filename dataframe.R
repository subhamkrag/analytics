#data frame

#rollno,mae, batch, gender, marks1, marks2
(rollno=1:30)
(name= paste('student',1:30,sep='-'))
(batch= sample(c(2016,2017,2018),size=30,replace=T))
table(batch)
(gender= sample(c('m','f'),size=30,replace=T))
table(gender)
(marks1=rnorm(30,mean=65,sd=7))
(marks2=rnorm(30,mean=60,sd=10))

df=data.frame(rollno,name,batch,gender,marks1,marks2,stringsAsFactors = F)
df
summary(df)
str(df)
df%name
df$name
df$gender=factor(df$gender)
str(df)
df$batch=factor(df$batch,ordered=T, levels=c('2016','2017','2018'))
str(df)
?paste
df
summary(df)
#to convert rollno to char
#analysis of data
str(df)#structure
head(df)#first 6 rows
tail(df)#last 6 rows
head(df,n=2)
dim(df)#no of rows *cols
nrow(df)#no of rows
ncol(df)#no of cols
names(df)#names of cols

#selections
df[1,1:4]
df[1:2,1:4]
df[c(1,3),c(1,4,5,6)]#first is row details and second is column details
df[ df$gender=='m', 3:5] #males;display3 to 5th column
df[ df$gender=='m' & df$marks1>70, 3:5]#display 3 to 5 column;males marks1>70
length(df)
nrow(df[df$gender=='m', ])


#sorting

sort(df$marks1)
order(df$marks1)#positio in sorted
df$marks1
df[order(df$marks1), ]
sort(df$marks1)
rev(sort(df$marks1))
df[order(df$gender,df$batch), ]#both are in ascending order df$ is optional
df[order(gender,-batch), ]


#summary/aggregating
aggregate(df$marks1, by=list(df$batch), FUN=mean)
aggregate(marks1~batch, data=df, FUN=mean)
df2=aggregate(cbind(marks1,marks2)~batch + gender, data=df, FUN=mean)
df2
aggregate(cbind(marks1,marks2)~ batch +gender,data=df, FUN=max)

df
#make a folder and save it
write.csv(df, "./data/bitsgoa.csv")
df3=read.csv("./data/bitsgoa.csv")
head(df3)
# we can see x twice so removing it
df3=df3[ ,-1]
head(df3)
