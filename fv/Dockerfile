FROM codercom/enterprise-base:ubuntu

SHELL ["/usr/bin/bash", "-o", "pipefail", "-c"]

USER root

RUN apt-get update
RUN apt-get install -y clang-tools cmake build-essential
RUN apt-get install -y unzip curl git bubblewrap
RUN git clone --depth 1 https://github.com/rocq-prover/platform /tmp/rocq

# Set options we need for the install script.

ENV COQ_PLATFORM_EXTENT=f
ENV COQ_PLATFORM_PACKAGE_PICK_FILE=/tmp/rocq/package_picks/package-pick-8.20~2025.01.sh

# This is the highest number of jobs they recommend for the build given memory
# limits. TODO: Maybe we can push this?
ENV COQ_PLATFORM_PARALLEL=p
ENV COQ_PLATFORM_JOBS=16

ENV COQ_PLATFORM_COMPCERT=n

# Exclude large packages for now. Easy to change if someone complains.
ENV COQ_PLATFORM_LARGE=e

ENV COQ_PLATFORM_SET_SWITCH=y

RUN cd /tmp/rocq; echo '/usr/local/bin' | ./coq_platform_make.sh

USER coder
