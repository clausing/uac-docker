FROM debian:stable-slim 

LABEL maintainer="Jim Clausing, jclausing@isc.sans.edu"
LABEL version="uac v2.9.1"
LABEL date="2024-06-27"
LABEL description="Run UAC in a docker container"

RUN apt-get update && apt-get -y install --no-install-recommends wget unzip ca-certificates \
  curl 

# Install UAC
WORKDIR /app
RUN wget https://github.com/tclahr/uac/releases/download/v2.9.1/uac-2.9.1.tar.gz \
  && tar xvf uac-*.tar.gz && rm *.tar.gz && mv uac-* uac

WORKDIR /app/uac
# Set the default command to run UAC
ENTRYPOINT ["./uac"]
CMD ["--help"]
