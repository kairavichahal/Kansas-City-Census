pdf("Population Distribution (zoomed).pdf", width=14, height=7)
par(mar=c(2,2,4,2))
par(mfrow=c(1,2))

zoomMap(ks.blkgrp, "Distribution of people identifying as 'White'\nin Kansas City (2000)", ks.blkgrp$white, col.white)
create.legend(breaks.all)
zoomMap(ks.blkgrp, "Distribution of people identifying as 'White'\nin Kansas City (2010)", ks.blkgrp10$P0030002, col.white10)
create.legend(breaks.all)

zoomMap(ks.blkgrp, "Distribution of people identifying as 'African American'\nin Kansas City (2000)", ks.blkgrp$black, col.black)
create.legend(breaks.all)
zoomMap(ks.blkgrp, "Distribution of people identifying as 'African American'\nin Kansas City (2010)", ks.blkgrp10$P0030003, col.black10)
create.legend(breaks.all)

zoomMap(ks.blkgrp, "Distribution of people identifying as 'American Indian'\nin Kansas City (2000)", ks.blkgrp$ameri.es, col.native)
create.legend(breaks.all)
zoomMap(ks.blkgrp, "Distribution of people identifying as 'American Indian'\nin Kansas City (2010)", ks.blkgrp10$P0030004, col.native10)
create.legend(breaks.all)

zoomMap(ks.blkgrp, "Distribution of people identifying as 'Asian'\nin Kansas City (2000)", ks.blkgrp$asian, col.asian)
create.legend(breaks.all)
zoomMap(ks.blkgrp, "Distribution of people identifying as 'Asian'\nin Kansas City (2010)", ks.blkgrp10$P0030005, col.asian10)
create.legend(breaks.all)

dev.off()