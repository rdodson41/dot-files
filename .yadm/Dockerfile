FROM debian

RUN apt-get update
RUN apt-get install --yes byobu git gpg man pass vim yadm
RUN useradd --create-home --shell /bin/bash rich

USER rich

WORKDIR /home/rich

RUN yadm clone https://github.com/rdodson41/dot-files.git
