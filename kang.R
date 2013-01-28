# qsub -I -l walltime=8:00:00 -l nodes=1;ppn=12
library(SCAN.UPC)
library(huex10stv2hsentrezgprobe)
library(huex10stv2hsentrezg.db)
library(pd.huex.1.0.st.v2)

fname.ptn <- "/nfs/01/osu6683/kang_gse25219_raw/DFC_over13/*.CEL.gz"
KANG.SCAN = SCAN(fname.ptn, probeSummaryPackage=huex10stv2hsentrezgprobe, outFilePath="KANG.SCAN.txt")
KANG.UPC = UPC(fname.ptn, probeSummaryPackage=huex10stv2hsentrezgprobe, outFilePath="KANG.UPC.txt")
save(KANG.SCAN, KANG.UPC, file="KANG.RData")
