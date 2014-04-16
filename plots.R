#options(digits=2)

total2000 = ks.blkgrp$white + ks.blkgrp$black + ks.blkgrp$ameri.es + ks.blkgrp$asian
total2010 = ks.blkgrp10$P0030002 + ks.blkgrp10$P0030003 + ks.blkgrp10$P0030004 + ks.blkgrp10$P0030005

total2000[total2000==0] = 1
total2010[total2010==0] = 1

all.white = c(ks.blkgrp$white/total2000, ks.blkgrp10$P0030002/total2010)
all.black = c(ks.blkgrp$black/total2000, ks.blkgrp10$P0030003/total2010)
all.native = c(ks.blkgrp$ameri.es/total2000, ks.blkgrp10$P0030004/total2010)
all.asian = c(ks.blkgrp$asian/total2000, ks.blkgrp10$P0030005/total2010)

all = c(all.white, all.black, all.native, all.asian)

breaks.all = quantile(all, probs=seq(0,1,by=0.1), names=F, na.rm=T)
#create.legend(breaks)
round(breaks.all, digits=2)

col.white = color.grad(ks.blkgrp$white/total2000, breaks.all)
col.black = color.grad(ks.blkgrp$black/total2000, breaks.all)
col.native = color.grad(ks.blkgrp$ameri.es/total2000, breaks.all)
col.asian = color.grad(ks.blkgrp$asian/total2000, breaks.all)

col.white10 = color.grad(ks.blkgrp10$P0030002/total2010, breaks.all)
col.black10 = color.grad(ks.blkgrp10$P0030003/total2010, breaks.all)
col.native10 = color.grad(ks.blkgrp10$P0030004/total2010, breaks.all)
col.asian10 = color.grad(ks.blkgrp10$P0030005/total2010, breaks.all)

######################################################################

#par(mfrow=c(2,4))

#m = matrix(c(1,2,3,4,5,6,7,8,9,9,9,9))
#layout(mat=m,heights=c(0.4,0.2))
#par(mar=c(0,0,0,0))
pdf("Population Distribution.pdf", width=14, height=7)
par(mar=c(2,2,4,2))
par(mfrow=c(1,2))

plotMap(ks.blkgrp, "Distribution of people identifying as 'White'\nin Kansas City (2000)", ks.blkgrp$white, col.white)
create.legend(breaks.all)
plotMap(ks.blkgrp, "Distribution of people identifying as 'White'\nin Kansas City (2010)", ks.blkgrp10$P0030002, col.white10)
create.legend(breaks.all)

plotMap(ks.blkgrp, "Distribution of people identifying as 'African American'\nin Kansas City (2000)", ks.blkgrp$black, col.black)
create.legend(breaks.all)
plotMap(ks.blkgrp, "Distribution of people identifying as 'African American'\nin Kansas City (2010)", ks.blkgrp10$P0030003, col.black10)
create.legend(breaks.all)

plotMap(ks.blkgrp, "Distribution of people identifying as 'American Indian'\nin Kansas City (2000)", ks.blkgrp$ameri.es, col.native)
create.legend(breaks.all)
plotMap(ks.blkgrp, "Distribution of people identifying as 'American Indian'\nin Kansas City (2010)", ks.blkgrp10$P0030004, col.native10)
create.legend(breaks.all)

plotMap(ks.blkgrp, "Distribution of people identifying as 'Asian'\nin Kansas City (2000)", ks.blkgrp$asian, col.asian)
create.legend(breaks.all)
plotMap(ks.blkgrp, "Distribution of people identifying as 'Asian'\nin Kansas City (2010)", ks.blkgrp10$P0030005, col.asian10)
create.legend(breaks.all)

#plot(1, type = "n", axes=FALSE, xlab="", ylab="")
#create.legend(breaks)

dev.off()