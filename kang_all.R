library(SCAN.UPC)
library(huex10stv2hsentrezgprobe)
library(huex10stv2hsentrezg.db)
library(pd.huex.1.0.st.v2)

fname.ptn <- "/nfs/01/osu6683/kang_gse25219_raw/*.CEL.gz"
KANG.ALL.SCAN = SCAN(fname.ptn, probeSummaryPackage=huex10stv2hsentrezgprobe, outFilePath="KANG.ALL.SCAN.txt")
KANG.ALL.UPC = UPC(fname.ptn, probeSummaryPackage=huex10stv2hsentrezgprobe, outFilePath="KANG.ALL.UPC.txt")
save(KANG.ALL.SCAN, KANG.ALL.UPC, file="KANG.ALL.RData")
