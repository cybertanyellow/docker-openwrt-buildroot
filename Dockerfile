FROM ubuntu:14.10

RUN apt-get update &&\
    apt-get install -y gcc g++ binutils patch autoconf libcurl4-openssl-dev \
                       bzip2 flex make gettext pkg-config unzip zlib1g-dev \
                       libc6-dev subversion libncurses5-dev gawk sharutils \
                       curl libxml-parser-perl python-yaml git ocaml-nox &&\
    apt-get clean &&\
    useradd -m u96018 &&\
    echo 'u96018 ALL=NOPASSWD: ALL' > /etc/sudoers.d/u96018
