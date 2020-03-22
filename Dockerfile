FROM groovy:3.0.1-jdk8

USER root
RUN \
  DEBIAN_FRONTEND=noninteractive apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y git mercurial && \
  DEBIAN_FRONTEND=noninteractive apt-get clean

USER groovy

RUN \
  git clone https://github.com/frej/fast-export.git
