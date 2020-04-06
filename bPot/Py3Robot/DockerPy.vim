Hopefully, youre using something like Docker to build these dependencies
into a container image. If you’re using a Debian image you need to do
something like this:

FROM ubuntu:latestRUN apt-get update && \
    apt-get install -y \
      build-essential \
      python2.7 \
      python2.7-dev \
      python-pip && \
    pip install --upgrade pip &&\
    pip install numpy
