plot(Nile, main="Caudal del r�o Nilo", ylab="Caudal (10^8 m^3)", xlab="A�o")
plot(Nile, main="Caudal del r�o Nilo (10^8 m^3)", ylab=NULL, xlab="A�o")
plot(Nile, main="Caudal del r�o Nilo" ~ (10^{8} ~ m^{3}), ylab=NULL, xlab="A�o", type="p")
plot(Nile, main="Caudal del r�o Nilo", ylab=Caudal ~ (10^{8} ~ m^{3}), xlab="A�o", type = "b")
