getwd()
load("R/ej/curso-r/Arthritis.Rdata")

# tabla contingencia bidimensional
tablaIT <- table(Arthritis$Improved, Arthritis$Treatment)
# con frecuencias marginales
addmargins(tablaIT)
# frecuencias relativas
prop.table(tablaIT)
# con frecuencias relativas + marginales
addmargins(prop.table(tablaIT))

# análisis gráfico
barplot(tablaIT, beside = T, legend = names(tablaIT[,1]))
barplot(t(tablaIT), beside = T, legend = names(tablaIT[1,]))

# frecuencias condicionadas
prop.table(tablaIT, 1)
addmargins(prop.table(tablaIT, 1))
prop.table(tablaIT, 2)
addmargins(prop.table(tablaIT, 2))

# análisis gráfico con frecuencias condicionadas
barplot(prop.table(tablaIT,2), legend = names(tablaIT[,1]))
barplot(t(prop.table(tablaIT,1)), legend = names(tablaIT[1,]))
