# uac-docker

Run the UAC live response tool in a docker container 

# Usage

This docker image will run `uac` (from https://github.com/tclahr/uac) against the mounted image on the host

`docker run -it --rm -v /mnt:/mnt -v ${PWD}:/app clausing/uac [switches] /app/cases/`
