# Yulia Abigail Ortíz Cuevas 
# 1967561
# 23/02/2026


# Correlacion -------------------------------------------------------------

resp <- data.frame(
  Tiempo = c(12, 15, 17, 18, 20, 21, 22, 26),
  Edad = c(14, 25, 20, 35, 45, 30, 60, 95)
)
resp

# Ordenar usando rangos de cada variable --------------------------------
# Crrear nuevas columnas con los rangos (1 a 8)
resp$Rango_Tiempo <- rank(resp$Tiempo, ties.method = "first")
resp$Rango_Edad <- rank(resp$Edad, ties.method = "first" )

# ver resultasdo
resp
#Grafico de dispersión
plot(resp$Tiempo, resp$Edad)
plot(resp$Rango_Tiempo, resp$Rango_Edad)

#Correlacion
cor.test(resp$Rango_Tiempo, resp$Rango_Edad, method = "spearman")

# Ejemplo 2: Tau de Kendall  ----------------------------------------------

tau <- data.frame(
  A = c(1, 2, 3, 4, 5, 6),
  B = c(3, 1, 4, 2, 6, 5)
)
cor.test(tau$A, tau$B, method = "kendall")

# Punto Biserial ----------------------------------------------------------

set.seed(123) # Para reprocucibilidad 

# Número de observaciones 
n <- 20

# Generar horas de estudio ( 1 a 10)
Horas_estudio <- sample(1:10, n, replace = TRUE)

# Asignar probabilidad de aprobar en funcion de horas de estuido 
# A mas horas, mas alta probabilidad

Resultado <- sapply(Horas_estudio, function(horas) {
  ifelse(runif(1) < (horas / 10), "Aprobado", "Reprobado")
  })

# Crear data frame
estudio <- data.frame(
  Estudiante = 1:n,
  Horas_estudio,
  Resultado
)
estudio
View(estudio)

# Crear variable dicotómica: 1 Aprobado, 0 = Reprobado
estudio$Resultado_bin <- ifelse(estudio$Resultado == "Aprobado", 1, 0)
head(estudio)
# Correlacion
cor.test(estudio$Horas_estudio, estudio$Resultado_bin, method = "pearson")
# Media
mean_aprobados <-
  
