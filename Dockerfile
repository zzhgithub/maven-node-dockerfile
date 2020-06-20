FROM maven:3-jdk-8

ENV author=zzh

RUN apt-get install -y nodejs &&\
    apt-get install -y npm &&\
    node -v &&\
    npm -v 