FROM alpine:3.7
RUN apk --update add openjdk8-jre
ENV APP_DIR=/saartha/temperature
ENV APP=temperature.jar
COPY temperature.jar $APP_DIR/
WORKDIR $APP_DIR
ENTRYPOINT java -jar -Djava.security.egd=file:/dev/urandom -Xmx150M $APP