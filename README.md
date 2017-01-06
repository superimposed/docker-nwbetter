## Why Docker

Keeping this self-contained on a stable system that I don't what to muck up.

## Usage

```
git clone https://github.com/superimposed/docker-nwbetter.git
docker build -t nwbetter:latest docker-nwbetter

docker run \
	--name=nwbetter \
	-v <path to data>:/cache \
	-v <path to data>:/data \
	-v <path to data>:/output \
	-v <path to data>:/torrent \
	-e NWB_USERNAME=<username> \
	-e NWB_PASSWORD=<password> \
	-e NWB_FORMATS="flac, v0, 320" \
	-e NWB_MEDIA="sacd, soundboard, web, dvd, cd, dat, vinyl, blu-ray"
	-e PGID=<gid> -e PUID=<uid>  \
	-e TZ=<timezone> \
	nwbetter:latest
```
