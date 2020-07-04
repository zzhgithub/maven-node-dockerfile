FROM maven:3-jdk-8

ENV author=zzh

RUN apt-get update &&\
    apt-get install -y build-essential libssl-dev &&\
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash &&\
    export NVM_DIR="$HOME/.nvm" &&\
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" &&\
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" &&\
    nvm install v9.11.1 &&\
    nvm use v9.11.1 &&\
    node -v &&\
    npm -v 