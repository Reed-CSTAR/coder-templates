FROM nvidia/cuda:13.0.0-devel-ubuntu24.04

USER root

RUN apt update
RUN apt install -y curl git unzip zip sudo

ENV TZ=America/Los_Angeles
ARG DEBIAN_FRONTEND=noninteractive
RUN apt install -y tzdata
RUN apt install -y hashcat

# Enable passwordless sudo for main user.
RUN groupadd -U ubuntu wheel
ADD sudoers /etc/sudoers

USER ubuntu
