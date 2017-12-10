# Diez primeras observaciones
ToothGrowth[1:10, ]

# Para cada observación si corresponde a suplemento de ácido ascórbico
ToothGrowth$supp == "VC"

# Todas las observaciones que corresponden a suplemento de ácido arcórbico
ToothGrowth[ToothGrowth$supp == "VC", ]

# Todas las observaciones que no corresponden a suplemento de ácido arcórbico.
# En este caso serían las observaciones que corresponden a suplemento de zumo de naranja
ToothGrowth[ToothGrowth$supp != "VC", ]

# Segunda variable de las observaciones que corresponden a longitudes de dientes superiores a 10.
# Es decir, el suplemento que corresponde a las observaciones con longitud de dientes superior a 10.
ToothGrowth[ToothGrowth$len>10, 2]

# Suplemento que corresponde a observaciones de dientes con longitud superior a 10 y dosis 
# de vitamina C de 0.5
ToothGrowth[ToothGrowth$len>10 & ToothGrowth$dose == 0.5, 2]

# Lista de observaciones que corresponden a longitud de dientes superior a 10 y dosis de 0.5
which(ToothGrowth$len>10 & ToothGrowth$dose == 0.5)
