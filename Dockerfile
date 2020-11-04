FROM ubuntu:14.04

RUN apt-get update
RUN apt-get -y install bison build-essential libc6-dev binutils ca-certificates cpp cpp-4.8 dpkg-dev fakeroot g++ g++-4.8 gcc \
  gcc-4.8 git git-man krb5-locales libalgorithm-diff-perl \
  libalgorithm-diff-xs-perl libalgorithm-merge-perl libasan0 libasn1-8-heimdal \
  libatomic1 libbison-dev libc-dev-bin libc6 libcloog-isl4 libcurl3 \
  libcurl3-gnutls libdpkg-perl libedit2 liberror-perl libfakeroot \
  libfile-fcntllock-perl libfl-dev libgcc-4.8-dev libgmp10 libgomp1 \
  libgssapi-krb5-2 libgssapi3-heimdal libhcrypto4-heimdal libheimbase1-heimdal \
  libheimntlm0-heimdal libhx509-5-heimdal libidn11 libisl10 libitm1 \
  libk5crypto3 libkeyutils1 libkrb5-26-heimdal libkrb5-3 libkrb5support0 \
  libldap-2.4-2 libmpc3 libmpfr4 libquadmath0 libroken18-heimdal librtmp0 \
  libsasl2-2 libsasl2-modules libsasl2-modules-db libsigsegv2 \
  libstdc++-4.8-dev libtimedate-perl libtsan0 libwind0-heimdal libx11-6 \
  libx11-data libxau6 libxcb1 libxdmcp6 libxext6 libxmuu1 linux-libc-dev m4 \
  make manpages manpages-dev openssh-client openssl patch rsync unzip xauth \
  xz-utils 
RUN apt-get -y install curl flex git-core gperf zip zlib1g-dev git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev libc6-dev
RUN apt-get -y install lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev libgl1-mesa-dev g++-multilib mingw32
RUN apt-get -y install tofrodos python-markdown libxml2-utils xsltproc software-properties-common
RUN add-apt-repository ppa:openjdk-r/ppa
RUN apt-get update
RUN apt-get -y install libssl-dev
RUN apt-get -y install openssl
RUN apt-get -y install openjdk-8-jdk
RUN apt-get -y install mkisofs
RUN useradd -u 3004 -Umd /code -s /bin/bash dthinh
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN adduser dthinh sudo
USER dthinh

RUN mkdir -p /code/SIN-TMC267343
WORKDIR /code