boxplot(CO2$uptake ~ CO2$Treatment)
boxplot(CO2$uptake ~ CO2$Type)

# Ambos pasan el test de varianza
var.test(CO2$uptake ~ CO2$Treatment, conf.level = 0.95)
var.test(CO2$uptake ~ CO2$Type, conf.level = 0.95)

# No pasan el test de normalidad
comprueba_normalidad <- function(data) {
  for (t in levels(data)) {
    print(t)
    print(shapiro.test(CO2[data == t,5]))
    qqnorm(CO2[data == t,5])
    qqline(CO2[data == t,5])
  }
}
comprueba_normalidad(CO2$Treatment)
comprueba_normalidad(CO2$Type)
