FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    libssl-dev \
    openssl \
  && rm -rf /var/lib/apt/lists/*

COPY files/binary/tarscontroller /usr/local/app/tars/tarscontroller/bin/tarscontroller
COPY files/template/tarscontroller/root/ /

CMD ["/bin/entrypoint.sh"]
