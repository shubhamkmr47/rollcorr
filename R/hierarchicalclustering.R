
heirarichalclustering <- function(){
  
if (!require("party")) {
  install.packages("party", dependencies = TRUE)
  library(party)
}
iris_ctree <- ctree(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data=iris)
plot(iris_ctree)

idx <- sample(1:dim(iris)[1], 40)
irisSample <- iris[idx,]
irisSample$Species <- NULL
hc <- hclust(dist(irisSample), method="ave")
plot(hc, hang = -1, labels=iris$Species[idx], main = "Heirarichal Clustering", xlab = "IRIS dataset")

# if (!require("plotly")) {
#     install.packages("plotly", dependencies = TRUE)
#     library(plotly)
# }

# set.seed(100)
# d <- diamonds[sample(nrow(diamonds), 1000), ];
# p <- plot_ly(d, x = carat, y = price, text = paste("Clarity: ", clarity), mode = "markers", color = carat, size = carat)
# p
}