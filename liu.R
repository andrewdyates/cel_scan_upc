library(SCAN.UPC)
library(hgu133ahsentrezgprobe)
library(hgu133ahsentrezg.db)
library(pd.hg.u133a)

fname.ptn <- "/nfs/01/osu6683/liu_brain_data/all_cels/*.CEL"
LIU.SCAN = SCAN(fname.ptn, probeSummaryPackage=hgu133ahsentrezgprobe, outFilePath="LIU.SCAN.txt")
LIU.UPC = UPC(fname.ptn, probeSummaryPackage=hgu133ahsentrezgprobe, outFilePath="LIU.UPC.txt")
save(LIU.SCAN, LIU.UPC, file="LIU.RData")
