FROM haskell:latest

LABEL maintainer="Denoyelle boris <denoyelle.boris@gmail.com>"

RUN apt -y update
RUN apt -y upgrade

ADD app /app
ADD machine /app/machine
WORKDIR /app
RUN cabal update
RUN cabal build
#RUN cabal install
CMD ["/bin/sh"]
