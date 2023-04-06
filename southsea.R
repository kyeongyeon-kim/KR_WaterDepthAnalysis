install.packages("marmap")
library(marmap)
southsea <- readGEBCO.bathy(file="D:/kimkyeongyeon/WaterDepthAnalysis/GEBCO/GEBCO_06_Apr_2023_e00f6af24f04/gebco_2022_n36.0_s33.0_w127.0_e130.0.nc") 
summary(southsea)

blues <- c("royalblue1","dodgerblue1","steelblue1","lightblue1")

plot(southsea, image = TRUE, land = TRUE, lwd = 0.1,
     bpal = list(c(max(southsea),0, "BlanchedAlmond"),
                 c(min(southsea),0, blues)),
     drawlabels = TRUE,
     col = "white")
scaleBathy(southsea, deg = 1.09, x = "bottomleft", inset = 5)
