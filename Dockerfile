FROM ubuntu:bionic
ARG USER=root
USER $USER
RUN apt-get update && apt-get -y install curl unzip screen nginx && \
    echo 'hello world' > /var/www/html/index.html \
COPY nginx.txt /etc/nginx/sites-available/default

EXPOSE 80

systemctl start nginx

