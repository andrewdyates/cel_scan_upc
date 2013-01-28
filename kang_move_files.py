#!/usr/bin/python
import re, os
from shutil import *


gsms=set([s.strip() for s in open("kang_DFC_13+gsms.txt")])
assert len(gsms) == 32
ROOT = "/nfs/01/osu6683/kang_gse25219_raw"
DST = "/nfs/01/osu6683/kang_gse25219_raw/DFC_over13"
RX = re.compile(r"(GSM\d+)_\S+.CEL.gz")

n = 0
for fname in os.listdir(ROOT):
    m = RX.match(fname)
    if m and m.group(1) in gsms:
        src, dst = os.path.join(ROOT,fname), os.path.join(DST,fname)
        move(src, dst)
        n += 1
        print "Moved %s to %s. %d moves." % (src, dst, n)

## OUTPUT
## Moved /nfs/01/osu6683/kang_gse25219_raw/GSM704224_HSB111-DFC-L.CEL.gz to /nfs/01/osu6683/kang_gse25219_raw/DFC_over13/GSM704224_HSB111-DFC-L.CEL.gz. 1 moves.
## ...
## Moved /nfs/01/osu6683/kang_gse25219_raw/GSM704753_HSB142-DFC-L.CEL.gz to /nfs/01/osu6683/kang_gse25219_raw/DFC_over13/GSM704753_HSB142-DFC-L.CEL.gz. 32 moves.
