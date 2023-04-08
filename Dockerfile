FROM ubuntu:bionic
ARG USER=root
USER $USER
RUN apt-get update && apt-get -y install curl unzip screen nginx && \
    echo 'hello world' > /var/www/html/index.html

EXPOSE 80
ENTRYPOINT nginx
