
FROM ubuntu:20.04
RUN apt update -y && apt install gnupg2 tzdata -y
RUN echo "Australia/Adelaide" |  tee /etc/timezone
RUN apt update -y && apt install nodejs npm openjdk-8-jdk wget unzip git vim nano -y

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && \
#     sudo apt-get install -yq bastet && \
#     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
