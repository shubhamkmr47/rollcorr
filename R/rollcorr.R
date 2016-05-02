
rollcorr <- function(){
  
# if (!require("gplots")) {
#   install.packages("gplots", dependencies = TRUE)
#   library(gplots)
# }
# if (!require("lattice")) {
#   install.packages("lattice", dependencies = TRUE)
#   library(lattice)
# }
# ### loading data
# data(AirPassengers)
# ### converting data
# rowcolNames <- list(as.character(1949:1960), month.abb)
# air_data <- matrix(AirPassengers,
#                    ncol = 12,
#                    byrow = TRUE,
#                    dimnames = rowcolNames)
# ### drawing heat maps
# heatmap.2(air_data,
#           trace = "none",
#           density.info = "none",
#           xlab = "month",
#           ylab = "year",
#           main = "Heatmap using opencpu")

# if (!require("party")) {
#   install.packages("party", dependencies = TRUE)
#   library(gplots)
# }
# iris_ctree <- ctree(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data=iris)
# plot(iris_ctree)

# idx <- sample(1:dim(iris)[1], 40)
# irisSample <- iris[idx,]
# irisSample$Species <- NULL
# hc <- hclust(dist(irisSample), method="ave")
# plot(hc, hang = -1, labels=iris$Species[idx], main = "Heirarichal Clustering", xlab = "IRIS dataset")
# }

if (!require("plotly")) {
  install.packages("plotly", dependencies = TRUE)
  library(plotly)
}

set.seed(100)
d <- diamonds[sample(nrow(diamonds), 1000), ]
plot(d, x = carat, y = price)