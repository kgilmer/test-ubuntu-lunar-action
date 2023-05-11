FROM ubuntu:23.04
COPY entrypoint.sh /entrypoint.sh
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata wget sudo gnupg keyboard-configuration
ENTRYPOINT ["/entrypoint.sh"]
