FROM ubuntu:20.04

# update the package list
RUN apt-get update 

# install necessary packages
RUN apt-get install -y wget git build-essential

# install Golang
RUN wget https://go.dev/dl/go1.22.6.linux-amd64.tar.gz
RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.6.linux-amd64.tar.gz
ENV PATH=$PATH:/usr/local/go/bin

# verify the installation
RUN go version

# add mgpusim
ADD mgpusim /mgpusim

# mgpusim working dir
WORKDIR /mgpusim/samples/fir

# build and run the fir benchmark
RUN go build
EXPOSE 33000

# run the fir benchmark
CMD ["./fir", "-timing", "-length=1082550", "-akitartm-port=33000"]