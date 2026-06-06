# Yulia Abigail Ortíz Cuevas
# 1967561
# 02/03/2026

x1 <- c(10.0, 8.0, 13.0, 9.0, 11.0, 14.0, 6.0, 4.0, 12.0, 7.0, 5.0)
y1 <- c(8.04, 6.95, 7.58, 8.81, 8.33, 9.96, 7.24, 4.26, 10.84, 4.82, 5.68)

cor.test(x1, y1, method = "pearson")

mean(x1)
mean(y1)

plot(x1, y1)
abline(lm(y1 ~ x1))

# x variable independiente, y depende de x

# Ejercicio 1

datos <- data.frame(
  Produccion_trigo = c(30, 28, 32, 25, 25, 25, 22, 24, 35, 40),
  Precio_harina = c(25, 30, 27, 40, 42, 40, 50, 45, 30, 25)
)

# Ajustar modelo lineal
fit.lm <- lm(Precio_harina ~ Produccion_trigo, data = datos)

# Gráfico
plot(datos$Produccion_trigo, datos$Precio_harina,
     col = "indianred",
     xlab = "Producción de trigo (Ton/ha)",
     ylab = "Precio de harina (Euros)",
     pch = 19,
     cex = 1.2)

abline(fit.lm, col = "blue")

# Sumatoria de Xi*Yi
sum_xi_yi <- sum(datos$Produccion_trigo * datos$Precio_harina)
sum_xi_yi

# Tamaño de muestra
n <- length(datos$Produccion_trigo)
n

# Resumen del modelo
summary(fit.lm)

# Prueba de Breusch-Pagan
library(lmtest)

bptest(fit.lm)

