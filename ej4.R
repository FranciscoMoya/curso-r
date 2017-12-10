cheddar <- read.table("http://openmv.net/file/cheddar-cheese.csv", header = T, sep = ",")
cheddar

# Por algún motivo que desconozco read.xlr no funciona con la URL de Cojinetes.xlsx
# así que la descargo y leo el archivo descargado
library(gdata)
setwd("C:/Users/francisco.moya/Documents/R/")
cojinetes.url = "https://www.uclm.es/profesorado/licesio/Docencia/ToledoR/Datos/Cojinetes.xlsx"
cojinetes.xls = tail(strsplit(cojinetes.url, "/")[[1]], n=1)
download.file(cojinetes.url, destfile = cojinetes.xls, mode = "wb",quiet = T)
cojinetes <- read.xls(cojinetes.xls)
cojinetes

