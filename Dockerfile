FROM linuxserver/rdesktop:latest
RUN apt-get update && apt-get install wget && \
  dpkg --add-architecture i386 && \
  wget -nc https://dl.winehq.org/wine-builds/winehq.key && \
  apt-key add winehq.key && \
  add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' && \
  apt-update && \
  apt install --install-recommends winehq-staging
  
