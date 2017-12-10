IncidenciasUCLM <- read.table("https://www.uclm.es/profesorado/licesio/Docencia/ToledoR/Datos/IncidenciasUCLM.csv", header = T, sep = ",") 
head(IncidenciasUCLM)
tail(IncidenciasUCLM)
summary(IncidenciasUCLM$Campus)
summary(IncidenciasUCLM$Tipo)

# Por campus
par(mfrow = c(2,3))
for (campus in levels(IncidenciasUCLM$Campus)) { 
  pie(summary(IncidenciasUCLM[IncidenciasUCLM$Campus == campus,2]), main=campus) 
}

# Por tipo
par(mfrow = c(2,2))
for (tipo in levels(IncidenciasUCLM$Tipo)) { 
  pie(summary(IncidenciasUCLM[IncidenciasUCLM$Tipo == tipo,1]), main=tipo) 
}
