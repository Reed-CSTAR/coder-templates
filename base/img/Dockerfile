FROM codercom/enterprise-base:ubuntu

# Switch to root for package installation.
USER root

# Okay to remove verilator and libsystemc-dev after Fall 2025.
RUN apt-get update && \
    apt-get install -y clang-tools cmake build-essential \
	libgtest-dev \
	verilator libsystemc-dev

USER coder
