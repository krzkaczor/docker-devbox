FROM ubuntu:20.04

RUN apt-get update && \
  apt-get install -y vim curl unzip wget sudo git

# install nodejs
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - 
RUN apt-get install -y nodejs
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN sudo apt install -y yarn

WORKDIR /root