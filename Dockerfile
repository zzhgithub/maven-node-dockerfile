FROM maven:3-jdk-8

ENV author=zzh

RUN apt-get update &&\
    apt-get install build-essential libssl-dev &&\
    source ~/.profile &&\
    nvm install v9.11.1 &&\
    nvm use v9.11.1 &&\
    node -v &&\
    npm -v 