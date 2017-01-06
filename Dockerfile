FROM lsiobase/alpine.python
MAINTAINER superimposed

# set python to use utf-8 rather than ascii.
ENV PYTHONIOENCODING="UTF-8"

# add local files
COPY root/ /

ENV NWB_USERNAME= \
    NWB_PASSWORD= \
    NWB_DATA_DIR=/data \
    NWB_OUTPUT_DIR=/output \
    NWB_TORRENT_DIR=/torrent \
    NWB_FORMATS="flac, v0, 320" \
    NWB_MEDIA="sacd, soundboard, web, dvd, cd, dat, vinyl, blu-ray"

# volumes
VOLUME /cache /data /output /torrent

# run nwbetter and quit
CMD ["/opt/nwbetter/nwbetter", "--cache", "/cache/cache"]
