 install.packages("volesti")
 library(volesti)
 library(plotly)
 library("plot3D")
 
## generate a 3D cube
 P = GenCube(3, "V")
 points = sample_points(P, N=1000, WalkType = "BW", walk_step = 5)
 dim(points)
dt=t(points)
 colnames(dt) = c("x", "y", "z")
 dt=data.frame(dt)
fig <- plot_ly(dt,type="scatter3d", x = ~x, y = ~y, z = ~z, mode="markers",colors = c('#BF382A'))
fig
file:///private/var/folders/hz/zw_wkxjj4bj5ckgqc55cf7cc0000gn/T/RtmpWOMwVr/viewhtml2693acd6a9e/index.html

## generate a 3D six-verticed polytope
  P = GenRandVpoly(3, 10)
  points = sample_points(P, N=10000, WalkType = "BW", walk_step = 5)
 dt=t(points)
  colnames(dt) = c("x", "y", "z")
  dt=data.frame(dt)
 fig <- plot_ly(dt,type="scatter3d", x = ~x, y = ~y, z = ~z, mode="markers",colors = c('#BF382A'),sizes=c(0.05, 0.05))
 fig
scatter3D(dt$x, dt$y, dt$z, colvar = NULL, col = "blue",
          pch = 19, cex = 0.5)
file:///private/var/folders/hz/zw_wkxjj4bj5ckgqc55cf7cc0000gn/T/RtmpWOMwVr/viewhtml2692f558a9e/index.html


## generate a 3D six-faced polytope
 P = GenRandHpoly(3, 100)
   points = sample_points(P, N=5000, WalkType = "BW", walk_step = 5)
  dt=t(points)
   colnames(dt) = c("x", "y", "z")
   dt=data.frame(dt)
   scatter3D(dt$x, dt$y, dt$z, colvar = NULL, col = "blue",  pch = 19, cex = 0.1)
 fig <- plot_ly(dt,type="scatter3d", x = ~x, y = ~y, z = ~z, mode="markers",colors = c('#BF382A'),sizes=c(0.05, 0.05))
 fig
file:///private/var/folders/hz/zw_wkxjj4bj5ckgqc55cf7cc0000gn/T/RtmpWOMwVr/viewhtml2697c37a782/index.html



 
