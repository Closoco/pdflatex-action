FROM debian:bullseye-slim

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    texlive-base \
    texlive-binaries \
    texlive-fonts-recommended \
    texlive-latex-base \
    texlive-latex-recommended \
    texlive-latex-extra \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]