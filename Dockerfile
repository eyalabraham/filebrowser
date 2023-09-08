FROM docker.io/filebrowser/filebrowser:latest

COPY filebrowser.json /.filebrowser.json

VOLUME /database
VOLUME /files

EXPOSE 8080
