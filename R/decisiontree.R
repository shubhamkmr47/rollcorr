
decisiontree <- function(){

if (!require("party")) {
  install.packages("party", dependencies = TRUE)
  library(party)
}

iris_ctree <- ctree(Species ~ Sepal.Length + Sepal.Width +
                      Petal.Length + Petal.Width, data=iris)
plot(iris_ctree)
}