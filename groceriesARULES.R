library(arules)
library(arulesViz)
windows()
groceries <- read.csv(choose.files())
View(groceries)
summary(groceries)
str(groceries)

class(groceries)
groceries <- as(groceries, "transactions") ## converting data frame into transaction data ##
itemFrequencyPlot(groceries,topN=20)

rules1<-apriori(groceries,parameter = list(support = 0.001,confidence = 0.65,minlen=1))
summary(rules1)

plot(rules1,method = "scatterplot")
plot(rules1,method = "grouped")
plot(rules1,method = "graph")

rules2<-apriori(groceries,parameter = list(support = 0.002,confidence = 0.7,minlen=2))
summary(rules2)

plot(rules2,method = "scatterplot")
plot(rules2,method = "grouped")
plot(rules2,method = "graph")

rules3<-apriori(groceries,parameter = list(support = 0.003,confidence = 0.75,minlen=3))
summary(rules3)

plot(rules3,method = "scatterplot")
plot(rules3,method = "grouped")
plot(rules3,method = "graph")
