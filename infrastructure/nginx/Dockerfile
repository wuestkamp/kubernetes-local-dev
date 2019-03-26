FROM alpine:3.8

MAINTAINER Kim Wüstkamp <kim@wuestkamp.com>

RUN apk add --update nginx
RUN rm -rf /var/cache/apk/* && rm -rf /tmp/*

ARG build_path

ADD $build_path/nginx.conf /etc/nginx/
ADD $build_path/symfony_prod.conf /etc/nginx/conf.d/

RUN rm /etc/nginx/conf.d/default.conf

RUN adduser -D -g '' -G www-data www-data

RUN mkdir /etc/nginx/ssl

CMD ["nginx"]

EXPOSE 80