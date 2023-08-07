
FROM alpine:3.16
RUN apk add unzip
COPY . /www/web
RUN unzip /www/web/vendor.zip -d /www/web/
WORKDIR /www/web
EXPOSE 8787

ENTRYPOINT ["/www/web/php", "/www/web/start.php", "start"]
