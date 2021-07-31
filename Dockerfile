FROM ubuntu:20.04

RUN apt-get update && \
  apt-get install -y vim curl unzip wget sudo git build-essential

# install nodejs
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - 
RUN apt-get install -y nodejs
RUN npm install -g yarn

# install nvm
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
RUN bash -c "source ~/.nvm/nvm.sh && nvm install 12 && nvm install 10"

WORKDIR /root