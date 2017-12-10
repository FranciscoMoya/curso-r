t_reparacion <- c(159, 280, 101, 212, 224, 379, 179, 264)
m = min(t_reparacion); m
M = max(t_reparacion); M
im = which(t_reparacion == m); im
iM = which(t_reparacion == M); iM
t_dias = t_reparacion / 24
t_dias = t_dias[c(-im,-iM)]; t_dias
