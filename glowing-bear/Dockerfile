FROM caddy:2-alpine

ADD Caddyfile /etc/caddy/

RUN apk add --no-cache --update git npm \
    && mkdir /glowing-bear \
    && git clone https://github.com/glowing-bear/glowing-bear.git /glowing-bear/ \
    && cd /glowing-bear \
    && npm install \
    && npm run build \
    && apk del git npm \
    && mv build ~ \
    && rm -rf * .git \
    && mv ~/build .

WORKDIR /glowing-bear
