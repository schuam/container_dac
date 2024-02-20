FROM ubuntu:22.04

ENV XDG_TEMPLATES_DIR="/templates"

# Install some needed packages.
RUN apt-get update \
    && apt-get install -y \
        pandoc \
    && apt-get clean \
    && rm -Rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man

VOLUME [ "/workdir", "${XDG_TEMPLATES_DIR}" ]
WORKDIR /workdir

