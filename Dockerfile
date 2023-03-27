FROM haskell:latest

RUN apt -y update
RUN apt -y upgrade

ADD app /app
ADD machine /app/machine
