
rollcorr <- function(){

if (!require("d3heatmap")) {
  install.packages("d3heatmap", dependencies = TRUE)
  library(d3heatmap)
}

if (!require("RJSONIO")) {
  install.packages("RJSONIO", dependencies = TRUE)
  library(RJSONIO)
}
  
json_file <-  '["age (y)":24,"height (cm)":182,"wieght (kg)":74.8},
    {"age (y)":30,"height (cm)":170,"wieght (kg)":70.1},
    {"age (y)":41,"height (cm)":169,"wieght (kg)":60},
    {"age (y)":22,"height (cm)":183,"wieght (kg)":75},
    {"age (y)":31,"height (cm)":178,"wieght (kg)":83.9},
    {"age (y)":35,"height (cm)":172,"wieght (kg)":76.2},
    {"age (y)":22,"height (cm)":164,"wieght (kg)":68}]'


json_file <- fromJSON(json_file)

json_file <- lapply(json_file, function(x) {
    x[sapply(x, is.null)] <- NA
    unlist(x)
})

data <- do.call("rbind", json_file)
data <- data.frame(data)
 df[!(is.na(df$start_pc) | $start_pc==""), ]


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