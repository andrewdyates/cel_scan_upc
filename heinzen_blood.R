library(SCAN.UPC)
library(huex10stv2hsentrezgprobe)
library(huex10stv2hsentrezg.db)
library(pd.huex.1.0.st.v2)

fname.ptn <- "/nfs/01/osu6683/heinzen_gse30453/*.CEL.gz"
HEINZEN.BLOOD.SCAN = SCAN(fname.ptn, probeSummaryPackage=huex10stv2hsentrezgprobe, outFilePath="HEINZEN.BLOOD.SCAN.txt")
HEINZEN.BLOOD.UPC = UPC(fname.ptn, probeSummaryPackage=huex10stv2hsentrezgprobe, outFilePath="HEINZEN.BLOOD.UPC.txt")
save(HEINZEN.BLOOD.SCAN, HEINZEN.BLOOD.UPC, file="HEINZEN.BLOOD.RData")
