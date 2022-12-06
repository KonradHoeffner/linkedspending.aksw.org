# Download zstd compressed LinkedSpending 2015 HDT file
# Expects named volume mounted into /kb at runtime.
# Two-step process chosen so that volume does not need to be deleted in Docker Compose.
FROM busybox:1.35.0
WORKDIR /download
RUN wget https://github.com/KonradHoeffner/linkedspending/releases/download/data-2015/lscomplete2015.hdt.zst
ENTRYPOINT cp -u /download/* /kb
