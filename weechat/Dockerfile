FROM alpine

ENV TERM=screen-256color
ENV LANG=C.UTF-8

ADD run.sh /

RUN apk -U upgrade && apk add \
    weechat \
    su-exec \
    && mkdir /weechat \
    && addgroup -g 9000 -S weechat \
    && adduser -u 9000 -D -S -h /weechat -s /sbin/nologin -G weechat weechat \
    && rm -rf /var/cache/apk/* \
    && rm -rf /tmp/*

VOLUME /weechat

WORKDIR /weechat

EXPOSE 9001

ENTRYPOINT ["/run.sh"]
CMD ["--dir /weechat"]
