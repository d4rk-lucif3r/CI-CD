FROM ubuntu:20.04
COPY . ./app
WORKDIR app
RUN chmod +x build.sh
ENTRYPOINT bash ./build.sh