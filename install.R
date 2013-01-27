# Install SCAN.UPC
# ==============================
download.file("http://www.bioconductor.org/packages/2.12/bioc/src/contrib/SCAN.UPC_1.99.2.tar.gz", "SCAN.UPC_1.99.2.tar.gz")
# Manually install dependencies
source("http://bioconductor.org/biocLite.R")
biocLite("Biostrings")
biocLite("oligo")

install.packages("SCAN.UPC_1.99.2.tar.gz",repos=NULL, type="source")
library(SCAN.UPC)

# Install Annotation packages
# ==============================
# HGU133A (Liu)
download.file("http://brainarray.mbni.med.umich.edu/Brainarray/Database/CustomCDF/16.0.0/entrezg.download/hgu133ahsentrezgprobe_16.0.0.tar.gz", "hgu133ahsentrezgprobe_16.0.0.tar.gz")
download.file("http://brainarray.mbni.med.umich.edu/Brainarray/Database/CustomCDF/16.0.0/entrezg.download/hgu133ahsentrezg.db_16.0.0.tar.gz", "hgu133ahsentrezg.db_16.0.0.tar.gz")
install.packages("hgu133ahsentrezgprobe_16.0.0.tar.gz", repos=NULL, type="source")
install.packages("hgu133ahsentrezg.db_16.0.0.tar.gz", repos=NULL, type="source")
library(hgu133ahsentrezgprobe)
library(hgu133ahsentrezg.db)

# HuEx-1_0st (Kang and Heinzen)
download.file("http://brainarray.mbni.med.umich.edu/Brainarray/Database/CustomCDF/16.0.0/entrezg.download/huex10stv2hsentrezgprobe_16.0.0.tar.gz", "huex10stv2hsentrezgprobe_16.0.0.tar.gz")
download.file("http://brainarray.mbni.med.umich.edu/Brainarray/Database/CustomCDF/16.0.0/entrezg.download/huex10stv2hsentrezg.db_16.0.0.tar.gz", "huex10stv2hsentrezg.db_16.0.0.tar.gz")
install.packages("huex10stv2hsentrezgprobe_16.0.0.tar.gz", repos=NULL, type="source")
install.packages("huex10stv2hsentrezg.db_16.0.0.tar.gz", repos=NULL, type="source")
library(huex10stv2hsentrezgprobe)
library(huex10stv2hsentrezg.db)