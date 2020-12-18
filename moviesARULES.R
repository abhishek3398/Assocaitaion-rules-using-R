library(arules)
library(arulesViz)
windows()
my_movies <- read.csv(choose.files(), colClasses = "factor")
View(my_movies)
summary(my_movies)
str(my_movies)
class(my_movies)

my_movies <- my_movies[-c(1:5)]
barplot(as.matrix(my_movies))

rules1 <- apriori(my_movies, parameter = list(support= 0.75, confidence = 0.85, minlen =2))
summary(rules1)

plot(rules1,method = "scatterplot")
plot(rules1,method = "grouped")
plot(rules1,method = "graph")

rules2 <- apriori(my_movies, parameter = list(support= 0.7, confidence = 0.8, minlen =2))
summary(rules2)

plot(rules2,method = "scatterplot")
plot(rules2,method = "grouped")
plot(rules2,method = "graph")

rules3 <- apriori(my_movies, parameter = list(support= 0.65, confidence = 0.7, minlen =1))
summary(rules3)

plot(rules3,method = "scatterplot")
plot(rules3,method = "grouped")
plot(rules3,method = "graph")
