FROM ubuntu
MAINTAINER lylandris <lylandris.jiang@gmail.com>

USER root
WORKDIR /root

RUN set -xe \
    && apt-get update \
    && apt-get install -y g++ make man gzip git-core vim gawk bc gnuplot texlive \
    && apt-get install -y --no-install-recommends texlive-latex-extra \
    && apt-get autoclean \
    && apt-get autoremove --purge -y \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

WORKDIR /root/resrc-mgr-emu

ENTRYPOINT ["bash"]
CMD ["--help"]
