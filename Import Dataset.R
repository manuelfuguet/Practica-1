# Ver las primeras filas del dataframe 'epa_http'
head(epa_http)

# Verifica los nombres actuales de las columnas
print(colnames(epa_http))

# Cambiar los nombres de las columnas
colnames(epa_http) <- c("IP", "Timestamp", "Request Type", "URL", "Protocol", "Response Code", "Bytes of Reply")

# Verifica los nuevos nombres de las columnas
print(colnames(epa_http))


# Verificar los nombres actuales de las columnas
print(colnames(epa_http))


epa_http$`Bytes of Reply` <- gsub("-", NA, epa_http$`Bytes of Reply`)

# Convertir la columna 'Bytes of Reply' a numérico
epa_http$`Bytes of Reply` <- as.numeric(epa_http$`Bytes of Reply`)


valor_medio <- mean(epa_http$`Bytes of Reply`, na.rm = TRUE)


# Calcular las dimensiones del dataset
dimensiones <- dim(epa_http)

# Mostrar el resultado del promedio y las dimensiones del dataset

print(paste("Promedio de 'Bytes of Reply':", valor_medio))
print(paste("Dimensiones del dataset (Filas, Columnas):", paste(dimensiones, collapse = ", ")))


# PREGUNTA 2

# Filtrar las IPs que contienen ".edu"
ips_edu <- grep("\\.edu", epa_http$IP, value = TRUE)

# Contar el número de IPs educativas
num_ips_edu <- length(ips_edu)

# Mostrar el resultado
print(paste("Número de IPs educativas:", num_ips_edu))
