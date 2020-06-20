FROM maven:3-jdk-8

ENV author=zzh

RUN apk add nodejs &&\
    apk add npm &&\
    node -v &&\
    npm -v 