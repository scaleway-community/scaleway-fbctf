NAME =			fbctf
VERSION =		latest
VERSION_ALIASES =	
TITLE =			Facebook CTF
DESCRIPTION =		Platform to host Capture the Flag competitions
SOURCE_URL =		https://github.com/facebook/fbctf
IMAGE_DEFAULT_ARCH =	x86_64


IMAGE_VOLUME_SIZE =	50G
IMAGE_BOOTSCRIPT =	latest
IMAGE_NAME =		Facebook CTF


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - https://j.mp/scw-builder | bash
-include docker-rules.mk
## Below you can add custom Makefile commands and overrides
