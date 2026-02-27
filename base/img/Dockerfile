FROM codercom/enterprise-base:ubuntu

# Switch to root for package installation.
USER root

RUN apt update && \
    apt install -y clang-tools cmake build-essential \
	libgtest-dev && \
    apt install -y software-properties-common && \
    # fuse3 is required for apptainer 
    apt install -y fuse3 && \
    add-apt-repository -y ppa:apptainer/ppa

# Note that we're on a new run command here. Since the first command is an
# update, we'll always be able to install apptainer (see 95ab8336). Note
# that it may be the case that the earlier layer is cached to something out of
# date. I don't believe this will cause problems, but time may correct me.
RUN apt update && apt install -y apptainer

USER coder
