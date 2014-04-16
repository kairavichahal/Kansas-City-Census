
###############################################################################
#
# Integrating American Community Survey summary data into UScensus objects
# ACT, 4-22-13
#
###############################################################################

# For example: Kansas

library(UScensus2010blkgrp)
data(missouri.blkgrp10)

# Geometric identity files from ACS.
mo.acs <- read.csv("g20115mo.csv", header=FALSE)

# In data frames, convert from factors to numbers, carefully.
ac <- function(x) as.numeric(as.character(x))

# Both files have block-group names, organized by tract. Make sure there's a match.
name.usc <- paste(ac(missouri.blkgrp10$tract), ac(missouri.blkgrp10$blkgrp), sep="")
name.acs <- paste(ac(mo.acs[,14]), ac(mo.acs[,15]), sep="")

# Get the rows in the ACS corresponding to our identifiers. 
trials <- mo.acs[match(name.usc, name.acs), 5]


#median income:
state <- "mo"
income.file <- read.csv(paste("e20115",state,"0064000.txt",sep=""), header=FALSE)

#Get the rows in the new file that corresponds to our block groups.
rows <- match(trials, income.file[,6])

missouri.blkgrp10$income.male <- ac(income.file[rows, 51])
missouri.blkgrp10$income.female <- ac(income.file[rows, 52])

age.file <- read.csv(paste("e20115",state,"0003000.txt",sep=""), header=FALSE)
rows <- match(trials, age.file[,6])
missouri.blkgrp10$age.male <- ac(age.file[rows, 101])
missouri.blkgrp10$age.female <- ac(age.file[rows, 102])

# Check everything.
par(mfrow=c(2,2))
hist(missouri.blkgrp10$income.male)
hist(missouri.blkgrp10$income.female)
hist(missouri.blkgrp10$age.male)
hist(missouri.blkgrp10$age.female)


# Save the new data frame.

save(missouri.blkgrp10, file="missouri-census2010-plus-acs.RData")
