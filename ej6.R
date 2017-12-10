plot(Nile, main="Caudal del río Nilo", ylab="Caudal (10^8 m^3)", xlab="Año")
plot(Nile, main="Caudal del río Nilo (10^8 m^3)", ylab=NULL, xlab="Año")
plot(Nile, main="Caudal del río Nilo" ~ (10^{8} ~ m^{3}), ylab=NULL, xlab="Año", type="p")
plot(Nile, main="Caudal del río Nilo", ylab=Caudal ~ (10^{8} ~ m^{3}), xlab="Año", type = "b")
