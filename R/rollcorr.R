
rollcorr <- function(data){

if (!require("d3heatmap")) {
  install.packages("d3heatmap", dependencies = TRUE)
  library(d3heatmap)
}

if (!require("RJSONIO")) {
  install.packages("RJSONIO", dependencies = TRUE)
  library(RJSONIO)
}
  
data <- data.matrix(data)

### drawing heat maps
heatmap(data,
          xlab = "month",
          ylab = "year",
          main = "Heatmap using opencpu")

# if (!require("plotly")) {
#     install.packages("plotly", dependencies = TRUE)
#     library(plotly)
# }

# set.seed(100)
# d <- diamonds[sample(nrow(diamonds), 1000), ];
# p <- plot_ly(d, x = carat, y = price, text = paste("Clarity: ", clarity), mode = "markers", color = carat, size = carat)
# p
}