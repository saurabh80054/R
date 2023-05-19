getwd()
setwd("Coding/R")

rating<-1:4
animal<-c('Koala','Hedgehog','Sloth','Panda')
country<-c('Australia','Italy','Peru','China')
avg_sleep_hours<-c(21,18,17,10)
super_sleepers<-data.frame(rating,animal,country,avg_sleep_hours,stringAsFactors=FALSE)
print(super_sleepers)
library("RWeka")
# write.arff(super_sleepers,file="super_sleepers.arff")

N=read.arff("super_sleepers.arff")
print(N)
print(head(N,2))
names(N)
N["animal"]

# UID name age gender course subject1 subject2 subject3
S.No <- 1:20
UID <-c("20BCS5799","20BCS5831","20BCS5832","20BCS5833","20BCS5834","20BCS5835","20BCS5836","20BCS5837","20BCS5838","20BCS5839","20BCS5841","20BCS5842","20BCS5843","20BCS5844","20BCS5845","20BCS5846","20BCS5847","20BCS5848","20BCS5849","20BCS5851")
Name <-c("Saurabh","Anushka","Mahi","Prerna","Yogesh","Deepak","Abhishek","Atul","Anand","Kartik","Aadarsh","Harshit","Rajeev","Ankit","Mayank","Lokendra","Saksham","Maulik","Saif","Ayush")
Age <-c("21","20","22","23","24","20","21","22","23","21","20","23","21","20","22","21","20","23","21","22")
Gender <-c("M","F","F","F","M","M","M","M","M","M","M","M","M","M","M","M","M","M","M","M")
Section <-c("A","B","C","D","A","B","C","D","A","B","C","D","A","B","C","D","A","B","C","D")
Course <-c("CSE","CSE","BBA","ECE","CSE","BBA","ECE","CSE","BBA","ECE","CSE","BBA","ECE","CSE","BBA","ECE","CSE","BBA","ECE","CSE")
Maths<-c(89,90,100,91,92,67,78,75,80,90,55,81,87,66,60,99,100,45,39,21)
English<-c(95,45,70,90,95,98,90,71,78,93,95,45,70,90,95,98,90,71,78,93)
Physics<-c(92.00,68.21,87.02,90.43,99.21,92.00,68.21,87.02,90.43,99.21,92.00,68.21,87.02,90.43,99.21,92.00,68.21,87.02,90.43,99.21)
TOC<-c(100.00,69.09,91.00,91.20,90.00,100.00,69.09,91.00,91.20,90.00,100.00,69.09,91.00,91.20,90.00,100.00,69.09,91.00,91.20,90.00)
Student_details<-data.frame(S.No,UID,Name,Age,Gender,Section,Course,Maths,English,Physics,TOC)
print(Student_details)
write.arff(Student_details,file='student_details.arff')
mean(Maths)
