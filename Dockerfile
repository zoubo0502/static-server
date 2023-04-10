FROM debian:11-slim
ARG USER=root
USER $USER
RUN apt-get update && apt-get -y install curl unzip screen nginx && \
    echo 'hello world' > /var/www/html/index.html
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
