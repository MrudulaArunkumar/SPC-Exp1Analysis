library(tidyverse)
library(plyr)

dir <- setwd("D:/PhD/Experiments/Sensory Pre conditioning/Exp1_SPC/raw data/Prolific")

#saving all the csv files in that directory into one variable
allOldata <- list.files(path = dir, pattern = "*.csv")

#making the file names into one list
Pilotdata <- lapply(allOldata, read_csv)

#using rbind to save it al in on df
#using rbind.fill because some columns do not exist in some datafiles, namely the "preResp.key" 
Pilot1 <- do.call(rbind.fill,Pilotdata)

write.csv(Pilot1, file = "Exp1_fulldataset.csv")
rm(Exp8)
Exp1bonus <- aggregate(data = Pilot1, Performance~PROLIFIC_PID, id)
Exp8Bonus$Perf <- Exp8$Performance
Exp8Prolific <- as.data.frame(Exp8Prolific)
table(Pilot1$PROLIFIC_PID)
table(Pilot1$date)
