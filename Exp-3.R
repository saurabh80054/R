#EXPERIMENT-3
setwd("D:/Coding/R")
getwd()
library(arules) #association rules 
library(arulesViz) #to visualize association rules 
library(RColorBrewer) #contains color palettes to use for graphics 
Stationary <-list( 
  c("pen","pencil","eraser","register"), 
  c("pen","pencil","ruler"), 
  c("pen","ruler","register"), 
  c("pen","highlighter"), 
  c("ruler","register","pen","eraser"), 
  c("pencil","pen","register"), 
  c("ruler","pen","register"), 
  c("pen","register") 
) 
names(Stationary)<-paste("t",c(1:8),sep="") 
trans <- as(Stationary,"transactions") 
dim(trans) 
itemLabels(trans) 
summary(trans) 
itemFrequencyPlot(trans, topN=10,cex.names=1) 
rules <-apriori(trans, parameter = list(supp=0.6, conf=0.8, target= "rules")) 
#generates summary of data summary(rules) 
inspect(rules)
