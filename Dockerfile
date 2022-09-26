FROM ubuntu:20.04
RUN mkdir -p /scripts
COPY build.sh /scripts
WORKDIR /scripts
RUN chmod +x build.sh
RUN ./build.sh