# Download and decompress LinkedSpending 2014-3 HDT file
FROM busybox:1.35.0
WORKDIR /kb
RUN wget -O - https://github.com/KonradHoeffner/linkedspending/releases/download/data-2014-3/lscomplete20143.hdt.gz | gunzip > /kb/lscomplete20143.hdt
