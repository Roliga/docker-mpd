FROM debian:latest

RUN apt-get update && apt-get install -y \
	mpd && \
	apt-get clean

EXPOSE 6600

VOLUME /var/lib/mpd
VOLUME /var/lib/mpd/music

ENTRYPOINT [ "mpd", "--stdout", "--no-daemon" ]
