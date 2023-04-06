eastsea <- readGEBCO.bathy(file="D:/kimkyeongyeon/WaterDepthAnalysis/GEBCO/GEBCO_06_Apr_2023_8d40773babca/gebco_2022_n38.584_s35.2661_w128.4741_e131.8689.nc") 
summary(eastsea)

plot(eastsea, image = TRUE, land = TRUE, lwd = 0.1,
     bpal = list(c(max(eastsea),0, "BlanchedAlmond"),
                 c(min(eastsea),0, blues)),
     drawlabels = TRUE,
     col = "white")

scaleBathy(eastsea, deg = 1.09, x = "bottomleft", inset = 5)
