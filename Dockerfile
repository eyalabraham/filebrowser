FROM docker.io/filebrowser/filebrowser:latest

COPY filebrowser.json /.filebrowser.json

COPY mkfiles.sh /mkfiles.sh
RUN chmod a+x /mkfiles.sh

VOLUME /database
VOLUME /files

EXPOSE 8080
