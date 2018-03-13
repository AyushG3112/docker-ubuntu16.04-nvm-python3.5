FROM ubuntu:16.04

MAINTAINER Ayush Gupta <AyushG3112@gmail.com>

SHELL ["/bin/bash", "-c"] 

RUN apt-get update && \
    apt-get install -y software-properties-common vim && \
    apt-get update && \
    apt-get -y dist-upgrade && \ 
    apt-get install -y build-essential libssl-dev curl python3-pip python-pip

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash && \
    source ~/.nvm/nvm.sh

CMD ["bash"]

    