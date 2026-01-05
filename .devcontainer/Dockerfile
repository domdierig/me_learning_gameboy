FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

RUN apt update
RUN apt install -y xz-utils

WORKDIR /workspace

RUN wget https://github.com/gbdev/rgbds/releases/latest/download/rgbds-linux-x86_64.tar.xz
RUN mkdir rgbds
RUN tar -xf rgbds-linux-x86_64.tar.xz -C rgbds

WORKDIR /workspace/rgbds

RUN ./install.sh




