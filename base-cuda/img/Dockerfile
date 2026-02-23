FROM nvidia/cuda:13.0.0-devel-ubuntu24.04

USER root

ENV TZ=America/Los_Angeles
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y curl git unzip zip sudo tmux \
	    tzdata \
	    hashcat

# Enable passwordless sudo for main user.
RUN groupadd -U ubuntu wheel
ADD sudoers /etc/sudoers

USER ubuntu
