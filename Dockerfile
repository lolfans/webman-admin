
FROM alpine:3.16
RUN apt-get update && apt-get install -y unzip
COPY . /www/web
RUN unzip /www/web/vendor.zip -d /www/web/
WORKDIR /www/web
EXPOSE 8787

ENTRYPOINT ["./php", "start.php", "start -d"]