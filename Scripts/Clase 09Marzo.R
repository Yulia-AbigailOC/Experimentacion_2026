titule: "Comparación de medias"
author: "Yulia Abigail Ortiz Cuevas"
date: "r format(Sys.Date())"
output:
  ioslides_presentation
    smaller: true

# Factor ------------------------------------------------------------------

IE <- read.csv("Datos/vivero.csv", header = T)
IE$Tratamiento <- as.factor(IE$Tratamiento)

tapply(IE$IE, IE$Tratamiento, mean)
tapply(IE$IE, IE$Tratamiento, var)

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

#Prueba independientes 
t.test(IE$IE ~ IE$Tratamiento, var.equal =T)

t.test(IE$IE ~ IE$Tratamiento, var.equal =T,
      alternative= "greater")

t.test(IE$IE ~ IE$Tratamiento, var.equal =T,
       alternative= "less")

# DATOS INDEPENDIENTES PRUEBAS DE T INDEPENDEINTES QUE CUMPLEN CON SU 
#PRUEBA DE T Y NORMALIDAD DE VARIANZA

# Prueba de T con una muestra ---------------------------------------------

mean(IE$IE)

t.test(mi  = 0.85, IE$IE)
t.test(IE$IE ~ IE$Tratamiento, paired =T)

Ctrl <- subset(IE$IE, IE$Tratamiento == "Ctrl")
Fert <- subset(IE$IE, IE$Tratamiento != "Ctrl")
t.test(Ctrl, Fert, paired =T)
