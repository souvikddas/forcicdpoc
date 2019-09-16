FROM ubuntu:16.04

MAINTAINER "Souvik Das"

RUN apt-get update \
    && apt-get install -y nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && echo "daemon off;" >> /etc/nginx/nginx.conf

ADD default /etc/nginx/sites-available/default

COPY Selecao /usr/share/nginx/html

EXPOSE 80
CMD ["nginx"]
