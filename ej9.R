par(mfrow = c(1,1))
hist(Nile)$counts
summary(Nile)

hist(treering)$counts
summary(treering)

par(mfrow = c(3,1))
for (grupo in levels(PlantGrowth$group)) { 
  hist(PlantGrowth[PlantGrowth$group == grupo,1], breaks = seq(3.5,6.5,0.5), main = grupo, xlab = "")
}

