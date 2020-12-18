library(arules)
library(arulesViz)
windows()
book <- read.csv(choose.files(), colClasses = "factor")
View(book)
summary(book)
str(book)
class(book)

barplot(as.matrix(book))

rules1 <- apriori(book, parameter = list(support= 0.6, confidence = 0.75, minlen =3))
summary(rules1)

plot(rules1,method = "scatterplot")
plot(rules1,method = "grouped")
plot(rules1,method = "graph")

rules2 <- apriori(book, parameter = list(support= 0.65, confidence = 0.85, minlen =2))
summary(rules2)

plot(rules2,method = "scatterplot")
plot(rules2,method = "grouped")
plot(rules2,method = "graph")

rules3 <- apriori(book, parameter = list(support= 0.7, confidence = 0.95, minlen = 1))
summary(rules3)

plot(rules3,method = "scatterplot")
plot(rules3,method = "grouped")
plot(rules3,method = "graph")
