FROM alpine:latest
RUN wget https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip \
 && mkdir v2ray \
 && unzip v2ray-linux-64.zip -d v2ray \
 && rm v2ray-linux-64.zip \
 && apk update \
 && apk add apache2 apache2-ssl apache2-proxy
COPY ./config.json /etc/v2ray/config.json
COPY ./fullchain.pem /etc/v2ray/certs/fullchain.pem
COPY ./privkey.pem /etc/v2ray/certs/privkey.pem
COPY ./virtualhost.conf /etc/apache2/conf.d/virtualhost.conf

EXPOSE 443

WORKDIR /v2ray
ENTRYPOINT httpd && ./v2ray -config=/etc/v2ray/config.json
