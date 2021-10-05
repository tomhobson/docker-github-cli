FROM ubuntu:latest

RUN apt-get update && apt-get install -y lsb-release && apt-get clean all
RUN apt-get update && apt-get install -y software-properties-common gnupg gnupg2 gnupg1 apt-transport-https zip
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
RUN apt-add-repository https://cli.github.com/packages
RUN apt-get install -y gh
