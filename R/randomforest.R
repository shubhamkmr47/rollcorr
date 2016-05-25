
randomforest <- function(){

	if (!require("randomForest")) {
	  install.packages("randomForest", dependencies = TRUE)
	  library(randomForest)
	}

	set.seed(17)
	iris.urf <- randomForest(iris[, -5])
	MDSplot(iris.urf, iris$Species)
}