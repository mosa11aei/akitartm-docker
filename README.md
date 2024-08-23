# docker: MGPUSim/AkitaRTM Example 

This repository contains a dockerized version of MGPUSim, and demonstrates an example of running MGPUSim's sample "fir" (finite impulse response) simulator benchmark. In addition to this, it runs the AkitaRTM monitoring server, and can be viewed on your host device, so that you may get a feel for what it looks like/how it is used.

## Instructions

1. [Install Docker](https://docs.docker.com/get-docker/) onto your system
2. Clone this repository. This repo includes the Dockerfile necessary to build the docker image. We have also included a copy of MGPUSim at the latest available release (v3.0.3, as of 12 AUG 2024) as a submodule. Thus, to clone, please do:

```bash
git clone --recursive https://github.com/mosa11aei/akitartm-docker.git
```

3. With docker installed, and within this directory, run: `docker build AkitaRTMDocker .`, where `AkitaRTMDocker` is an arbitrary name for the image that will be build using docker.
4. After building the docker image, you can use the [docker GUI](https://docs.docker.com/desktop/use-desktop/) to run a container from the image, or, through the command line:

```bash
docker run AkitaRTMDocker -p 8080:33000
# 8080 is arbitrary; an IP your computer can access. 
# 33000 is a given port for AkitaRTM in the dockerfile.
```

At this point, you are now able to access AkitaRTM, monitoring the "fir" benchmark, by going to `http://localhost:8080` (assuming that was the port you chose on the host).