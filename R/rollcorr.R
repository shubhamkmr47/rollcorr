
rollcorr <- function(){
  
### loading data
data(AirPassengers)
### converting data
rowcolNames <- list(as.character(1949:1960), month.abb)
air_data <- matrix(AirPassengers,
                   ncol = 12,
                   byrow = TRUE,
                   dimnames = rowcolNames)
### drawing heat maps
heatmap(air_data,
          trace = "none",
          density.info = "none",
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