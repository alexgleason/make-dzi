FROM ubuntu:22.04

RUN apt-get update &&\
    apt-get install -y libvips-tools &&\
    # clean up apt
    rm -rf /var/lib/apt/lists/*

COPY ./entrypoint.sh /app/
ENTRYPOINT /app/entrypoint.sh