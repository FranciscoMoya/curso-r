muestra <- sample(rivers,10)
t.test(muestra)$conf.int
shapiro.test(muestra)

# Muchas veces no pasa el test de normalidad.
# rivers es una muestra de 141 observaciones no aleatorias que no pasan el test de normalidad

t.test(rivers)$conf.int
shapiro.test(rivers)

