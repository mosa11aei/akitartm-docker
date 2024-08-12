FROM ubuntu:20.04

# update the package list
RUN apt-get update 

# install Golang
RUN wget https://go.dev/dl/go1.22.6.linux-amd64.tar.gz
RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.6.linux-amd64.tar.gz
ENV PATH=$PATH:/usr/local/go/bin

# verify the installation
RUN go version

# install git
RUN apt-get install -y git