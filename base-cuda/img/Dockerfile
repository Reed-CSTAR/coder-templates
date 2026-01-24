FROM nvidia/cuda:13.0.0-devel-ubuntu24.04

USER root

RUN apt update
RUN apt install -y curl git unzip zip sudo

# Enable passwordless sudo for main user.
RUN groupadd -U ubuntu wheel
ADD sudoers /etc/sudoers

USER ubuntu
