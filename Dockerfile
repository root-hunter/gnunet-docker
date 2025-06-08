FROM ubuntu:latest

WORKDIR /opt

RUN apt update && apt install -y git

RUN git clone git://git.gnunet.org/gnunet.git

RUN apt update && apt install -y \
    autoconf automake libtool \
    meson gettext recutils \
    build-essential \
    libltdl-dev \
    libgcrypt20-dev libidn2-0-dev \
    libmicrohttpd-dev libunistring-dev \
    libjansson-dev libcurl4-gnutls-dev \
    libgnutls28-dev libgmp-dev \
    texinfo texlive texlive-fonts-recommended \
    texlive-lang-english texlive-latex-base \
    make pkgconf zlib1g-dev \
    iptables libsqlite3-dev \
    libextractor-dev \
    libnss3-dev \
    libopus-dev libogg-dev \
    libpulse-dev libbluetooth-dev \
    libsodium-dev \
    libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev \
    perl

WORKDIR /opt/gnunet

RUN meson setup --help
RUN ./bootstrap
RUN meson setup -Dprefix=/usr/local build
RUN meson compile -C build

CMD ["/bin/bash"]