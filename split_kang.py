RSCRIPT = """
library(SCAN.UPC)
library(huex10stv2hsentrezgprobe)
library(huex10stv2hsentrezg.db)
library(pd.huex.1.0.st.v2)

fname.ptn <- "/nfs/01/osu6683/kang_gse25219_raw/%(name)s/*.CEL.gz"
KANG.SCAN = SCAN(fname.ptn, probeSummaryPackage=huex10stv2hsentrezgprobe, outFilePath="KANG.SCAN.%(name)s.txt")
save(KANG.SCAN, file="KANG.SCAN.%(name)s.RData")
KANG.UPC = UPC(fname.ptn, probeSummaryPackage=huex10stv2hsentrezgprobe, outFilePath="KANG.UPC.%(name)s.txt")
save(KANG.UPC, file="KANG.UPC.%(name)s.RData")
"""


import os, re
from qsub import *

DIR = "/nfs/01/osu6683/kang_gse25219_raw/"
SRC = "/nfs/01/osu6683/cel_scan_upc/rscripts/"
RX = re.compile("HSB\d+")

for fname in os.listdir(DIR):
  if not RX.match(fname): continue
  name = fname.strip()
  fpath = SRC+name+".R"
  fp = open(fpath, "w")
  fp.write(RSCRIPT % {'name':name})
  fp.close()
  Q = Qsub(n_nodes=1, n_ppn=12, hours=99, email=True, jobname="%s_nrm" % name)
  Q.add("cd /nfs/01/osu6683/cel_scan_upc")
  Q.add("R CMD BATCH %s %s.Rout" % (fpath, fpath))
  Q.submit()
  print Q.script()
