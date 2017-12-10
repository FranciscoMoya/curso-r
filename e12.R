# Daba error al intentar subir el archivo

boxplot(Nile,
        horizontal  =  T,  col = "gray",
        main = "Caudal del rio Nilo", xlab = "Caudal (10^8 m^3)")

boxplot(treering,
        horizontal  =  T,  col = "gray",
        main = "Datos de anillos en arboles (-6000 a 1979)",
        xlab = "Grosor normalizado")


boxplot(PlantGrowth$weight ~ PlantGrowth$group,
        horizontal  =  T, col = c("red", "green", "blue"),  
        main = "Crecimiento de Plantas", xlab = "Peso seco")
