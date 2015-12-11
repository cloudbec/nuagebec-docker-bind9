FROM alpine

RUN apk --update add bind && rm -rf /var/cache/apk/*

ADD ./named.conf /etc/bind/named.conf

EXPOSE 53

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]
