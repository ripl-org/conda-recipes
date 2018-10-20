FROM centos:6
LABEL maintainer "Mark Howison <mhowison@ripl.org>"
LABEL repository riplorg
LABEL image conda-build
LABEL tag 20181020

RUN yum update -y
RUN yum install -y \
  fuse-devel \
  libX11-devel \
  libXext-devel \
  libXrender-devel \
  java-1.8.0-openjdk-headless \
  java-1.8.0-openjdk-devel \
  patch \
  sudo \
  tree \
  unzip \
  wget \
  which \
  xcb-util-renderutil-devel \
  zip

RUN yum clean all

RUN useradd -m -d /home/conda -s /bin/bash conda
RUN echo "conda ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/conda \
 && chmod 0440 /etc/sudoers.d/conda

USER conda
ENV HOME /home/conda

RUN cd /home/conda \
 && wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh \
 && bash Miniconda3-latest-Linux-x86_64.sh -b \
 && rm Miniconda3-latest-Linux-x86_64.sh

ENV PATH /home/conda/miniconda3/bin:$PATH

RUN conda install -y conda-build conda-verify anaconda-client git
RUN conda clean -ay
