# Leer archivo CSV en R
data <- read.csv("/Users/manuel.fuguet/Downloads/epa-http.csv", header = TRUE, sep = "/", stringsAsFactors = FALSE)

# Ver los primeros datos
head(data)
