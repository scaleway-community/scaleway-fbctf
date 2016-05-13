## -*- docker-image-name: "scaleway/fbctf:latest" -*-
FROM scaleway/nodejs:amd64-latest
# following 'FROM' lines are used dynamically thanks do the image-builder
# which dynamically update the Dockerfile if needed.
#FROM scaleway/nodejs:armhf-latest	# arch=armv7l
#FROM scaleway/nodejs:arm64-latest	# arch=arm64
#FROM scaleway/nodejs:i386-latest	# arch=i386
#FROM scaleway/nodejs:mips-latest	# arch=mips


# Prepare rootfs for image-builder
RUN /usr/local/sbin/scw-builder-enter


# Upgrade system and install packages
RUN apt-get update && apt-get -y install git-core && apt-get clean
RUN git clone https://github.com/facebook/fbctf
RUN cd fbctf && ./extra/provision.sh prod `pwd`


# Clean rootfs from image-builder
RUN /usr/local/sbin/scw-builder-leave
