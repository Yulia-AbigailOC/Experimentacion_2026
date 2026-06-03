# Yulia Abigail Ortíz Cuevas 
# 1967561
# 16/02/2026

# Carga de base de datos --------------------------------------------------

IE <- read.csv("Datos/vivero.csv", header = T)
IE$Tratamiento <- as.factor(IE$Tratamiento)
  

# Estadistica descriptiva -------------------------------------------------
tapply(IE$IE, IE$Tratamiento, mean)
tapply(IE$IE, IE$Tratamiento, sd)
tapply(IE$IE, IE$Tratamiento, var)

# Grafica -----------------------------------------------------------------

boxplot(IE$IE ~ IE$Tratamiento)
boxplot(IE$IE ~ IE$Tratamiento,
        col = "red",
        xlab = "Tratamiento",
        ylab = "IE",
        main = "Vivero FCF",
        ylim = c(0.4, 1.2))


# Prueba de normalidad  ---------------------------------------------------

shapiro.test(IE$IE)


# Prueba de homogenedad de varianzas --------------------------------------
bartlett.test(IE$IE ~ IE$Tratamiento)


# Histograma --------------------------------------------------------------
hist(IE$IE)
hist(IE$IE,
     col = "blue",
     ylim = c(0,12),
     ylab = "Tratamiento",
     xlab = "Variable IE")
