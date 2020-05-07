FROM ubuntu:18.04

ENV TZ=Europe/Amsterdam
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install basic packages
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y  --no-install-recommends \
    sudo ca-certificates curl less nano unzip wget git
RUN apt-get install -y build-essential

# Install nodejs
RUN curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

# Install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN sudo apt-get update && sudo apt-get install yarn

## Install openssh
RUN sudo apt-get update && sudo apt-get install -y openssh-server && ssh -V

## Install aws cli with pip
#RUN sudo apt-get install -y python3-pip
#RUN pip3 install --upgrade pip
#RUN sudo -H pip3 install awscli --upgrade --user
#RUN python3 -m awscli --version

## Install aws cli
RUN apt-get update && DEBIAN_FRONTEND=noninteractive sudo apt-get install -y awscli && aws --version && which aws
