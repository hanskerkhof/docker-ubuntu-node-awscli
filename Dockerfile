FROM ubuntu:16.04

#RUN apt-get update && apt-get -y upgrade && DEBIAN_FRONTEND=noninteractive apt-get install -y  --no-install-recommends \
#    sudo ca-certificates apt-utils locales curl less nano unzip wget git\
#    mysql-server \
#    apache2 \
#    php7.0 php7.0-mysql php7.0-curl php7.0-gd php7.0-mcrypt php7.0-xml php7.0-mbstring libapache2-mod-php7.0

#RUN apt-get update && apt-get -y upgrade && DEBIAN_FRONTEND=noninteractive apt-get install -y  --no-install-recommends \
#    sudo ca-certificates curl less nano unzip wget git \
#    nodejs npm

# Install basic packages
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y  --no-install-recommends \
    sudo ca-certificates curl less nano unzip wget git

RUN apt-get install -y build-essential

# Install nodejs
RUN curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

# Install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN sudo apt-get update && sudo apt-get install yarn

## install groff !?!? needed by awscli docs
#RUN apt-get install -y groff
#
## Install aws cli
#RUN sudo apt-get install -y python-pip
#RUN pip install --upgrade pip
#RUN pip install awscli
#RUN pip install awscli --upgrade

RUN apt-get update && sudo apt-get install -y awscli
