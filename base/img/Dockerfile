FROM codercom/enterprise-base:ubuntu

# Switch to root for package installation.
USER root

RUN apt-get update && \
    apt-get install -y clang-tools cmake build-essential \
	libgtest-dev

USER coder
