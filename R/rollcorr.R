
rollcorr <- function(){
  
if (!require("gplots")) {
  install.packages("gplots", dependencies = TRUE)
  library(gplots)
}
if (!require("lattice")) {
  install.packages("lattice", dependencies = TRUE)
  library(lattice)
}
### loading data
data(AirPassengers)
### converting data
rowcolNames <- list(as.character(1949:1960), month.abb)
air_data <- matrix(AirPassengers,
                   ncol = 12,
                   byrow = TRUE,
                   dimnames = rowcolNames)
### drawing heat maps
heatmap.2(air_data,
          trace = "none",
          density.info = "none",
          xlab = "month",
          ylab = "year",
          main = "Heatmap using opencpu")
}
