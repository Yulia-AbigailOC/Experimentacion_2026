
# Yulia Abigail Ortiz Cuevas-1967561
# Fecha: 10 de febrero de 2026

# Gastos totales MCF
300 + 240 + 1527 + 400 + 1500 + 1833

celular <- 300
celular
transporte <- 240
transporte
comestibles <- 1527
comestibles
gimnasio <- 400
gimnasio
alquiler <- 1500
alquiler
otros <- 1833
otros
sum(celular + transporte + comestibles + gimnasio + alquiler + otros)

# Gatos por 5 meses 
(5800 * 5)
# Gastos por 10 meses 
(5800 * 10)

gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)

sort(gastos)
sort(gastos, decreasing = TRUE)
barplot(gastos, decreasing = TRUE)
decreciente <- sort(gastos, decreasing = TRUE)

barplot(decreciente, names.arg = c(celular, transporte, comestibles, gimnasio, alquiler, otros))
barplot(decreciente, names.arg = c(celular, transporte, comestibles, gimnasio, alquiler, otros), las = 2)
names(decreciente) <- c("otros", "comestibles", "alquiler",
                   "Gimnasio", "celular", "transporte")
barplot(decreciente, las = 2)

# PARTE II: VARIABLES
# Nombre de estudiante: *Cualitativa*
# Fecha de nacimiento (p. Ej., 21/10/1995): *Cuantitativa*
# Edad (en años): *Cuantitativa*
# Dirección de casa (por ejemplo, 1234 Ave. Alamo): *Cualitativa*
# Número de teléfono (por ejemplo, 510-123-4567): *Cualitativa*
# Área principal de estudio: *Cualitativa*
# Grado de año universitario: primer año, segundo año, tercer año, último año: *Cualitativo*
# Puntaje en la prueba de mitad de período (basado en 100 puntos posibles): *Cuantitativa*
# Calificación general: A, B, C, D, F: *Cualitativa*
# Tiempo (en minutos) para completar la prueba final de MCF 202: *Cuantitativa*
# Numero de hermanos: *Cuantitativa*

