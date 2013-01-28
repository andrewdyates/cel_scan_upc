library(SCAN.UPC)
library(huex10stv2hsentrezgprobe)
library(huex10stv2hsentrezg.db)
library(pd.huex.1.0.st.v2)

fname.ptn <- "/nfs/01/osu6683/heinzen_gse30453/brain/*.CEL.gz"
HEINZEN.SCAN = SCAN(fname.ptn, probeSummaryPackage=huex10stv2hsentrezgprobe, outFilePath="HEINZEN.SCAN.txt")
HEINZEN.UPC = UPC(fname.ptn, probeSummaryPackage=huex10stv2hsentrezgprobe, outFilePath="HEINZEN.UPC.txt")
save(HEINZEN.SCAN, HEINZEN.UPC, file="HEINZEN.RData")
