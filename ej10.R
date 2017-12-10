# cutre, todo a mano
media <- numeric(3,1)
for (i in 1:3) {
  media[i] <- mean(trees[,i])
}
names(media) <- colnames(trees)
media

# aplicando en la segunda dimensión (columnas)
apply(trees,2,mean)

# mas sencillo con sapply
sapply(trees, mean)

# todavía más sencillo
colMeans(trees)
