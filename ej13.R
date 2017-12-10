f <- function(ds) {
  m <- mean(ds)
  d <- sd(ds)
  normal <- rnorm(length(ds), m,d)
  poison <- rpois(length(ds), m)
  return(c(analiza(ds),
           analiza(normal),
           analiza(poison)))
}

analiza <- function(ds) {
  t <- c(skewness(ds), kurtosis(ds))
  names(t) <- c("Asimetría", "Kurtosis")
  return(t)              
}


# Caudal del Nilo
f(Nile)

# Grosor normalizado de anillos
f(treering)

# Crecimiento en grupo de control
f(PlantGrowth[PlantGrowth$group == "ctrl", 1])

# Crecimiento para tratamiento 1
f(PlantGrowth[PlantGrowth$group == "trt1", 1])

# Crecimiento para tratamiento 2
f(PlantGrowth[PlantGrowth$group == "trt2", 1])
