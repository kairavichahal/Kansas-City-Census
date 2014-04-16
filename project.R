par(mfrow=c(1,2))

#Black
plotMap2000("Kansas City 2000", kansas.blkgrp$black, missouri.blkgrp$black)

ks.black00 = extract.breaks(kansas.blkgrp$black)
mo.black00 = 

black2000 = 

legend("bottomright", extract.breaks(kansas.blkgrp$black),
       col=topo.colors(length(hist(obama.ohio, plot=F)$breaks)-1), pch=15,
       pt.cex=1.5, y.intersp=0.85, cex=0.85)

plotMap2010("Kansas City 2010", kansas.blkgrp10$P0030003, missouri.blkgrp10$P0030003)