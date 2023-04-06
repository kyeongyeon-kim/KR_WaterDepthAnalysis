westsea <- readGEBCO.bathy(file="D:/kimkyeongyeon/WaterDepthAnalysis/GEBCO/GEBCO_06_Apr_2023_eb7889e085b8/gebco_2022_n38.0_s35.0_w123.0_e127.0.nc") 
summary(westsea)

plot(westsea, image = TRUE, land = TRUE, lwd = 0.1,
     bpal = list(c(max(westsea),0, "BlanchedAlmond"),
                 c(min(westsea),0, blues)),
     drawlabels = TRUE,
     col = "white")

scaleBathy(westsea, deg = 1.09, x = "bottomleft", inset = 5)
