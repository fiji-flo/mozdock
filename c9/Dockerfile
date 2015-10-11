FROM ubuntu:vivid

RUN apt-get update
RUN apt-get install -y git build-essential nodejs
RUN apt-get install -y curl python

RUN useradd -m user
USER user
ENV HOME /home/user
WORKDIR /home/user

RUN git clone git://github.com/c9/core.git c9
WORKDIR c9
RUN scripts/install-sdk.sh
