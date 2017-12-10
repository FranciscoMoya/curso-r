comprueba_normalidad <- function(data) {
  hist(data, probability = T)
  lines(density(data), col = "red")
  qqnorm(data)
  qqline(data)
}

comprueba_normalidad(Nile)
comprueba_normalidad(treering)
comprueba_normalidad(PlantGrowth[,1])
comprueba_normalidad(PlantGrowth[PlantGrowth$group == "ctrl",1])
comprueba_normalidad(PlantGrowth[PlantGrowth$group == "trt1",1])
comprueba_normalidad(PlantGrowth[PlantGrowth$group == "trt2",1])
