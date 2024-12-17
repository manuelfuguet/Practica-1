# Leer archivo CSV
data <- read.csv("/Users/manuel.fuguet/Downloads/epa-http.csv", 
                 header = FALSE, sep = " ", stringsAsFactors = FALSE)
library(readr)
epa_http <- read_table("~/Downloads/epa-http.csv", 
                       col_names = FALSE)
View(epa_http)
