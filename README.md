


## Build
    docker build --no-cache -t hanskerkhof/ubuntu-node-awscli .

    docker build --no-cache -t hanskerkhof/ubuntu-node-awscli:tagname .

## Run interactively
    docker run -it hanskerkhof/ubuntu-node-awscli /bin/bash

## Publish
    docker push hanskerkhof/ubuntu-node-awscli

    docker push hanskerkhof/ubuntu-node-awscli:tagname

| Package     | Version                    |
| ------------|----------------------------|
| Ubuntu      | 16.04.3 LTS (Xenial Xerus) |
| node        | v9.3.0                     |
| yarn        | 1.3.2                      |
| npm         | 5.5.1                      |
| python      | 2.7.12                     |
| pip         | 9.0.1                      |
| curl        | 7.47.0                     |
| git         | 2.7.4                      |
| awscli      | 1..11.13                  |


