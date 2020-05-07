# Docker ubuntu with nodejs, yarn and aws cli

Current version 1.5 (2020-05-05)

## CHANGELOG
### 1.4
- Install aws-cli with apt-get install in favor over with python pip 

### 1.5
- Install openssh

## Howto

### Build
    docker build --no-cache -t hanskerkhof/ubuntu-node-awscli .

    docker build --no-cache -t hanskerkhof/ubuntu-node-awscli:tagname .

    docker build --no-cache -t hanskerkhof/ubuntu-node-awscli:1.5 .

### Run interactively
    docker run -it hanskerkhof/ubuntu-node-awscli /bin/bash

### Publish
    docker push hanskerkhof/ubuntu-node-awscli

    docker push hanskerkhof/ubuntu-node-awscli:tagname

    docker push hanskerkhof/ubuntu-node-awscli:1.5

| Package     | Version                    |
| ------------|----------------------------|
| Ubuntu      | 18.04.3 LTS (bionic)       |
| node        | v13.12.0                   |
| yarn        | 1.22.4                     |
| npm         | 8.14.4                     |
| python      | 2.7.17                     |
| pip         | 20.0.2                     |
| curl        | 7.58.0                     |
| git         | 2.17.1                     |
| aws         | 1.18.39                    |
| openssh     | OpenSSH_7.6p1              |
