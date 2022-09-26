FROM ubuntu:20.04
COPY . ./app
WORKDIR app
RUN apt-get -y update && apt-get -y upgrade && apt-get -y install bc build-essential zip curl libstdc++6 git wget
RUN chmod +x build.sh
ENTRYPOINT bash ./build.sh