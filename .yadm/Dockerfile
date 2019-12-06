FROM debian:latest

RUN apt-get update
RUN apt-get install --yes bash-completion byobu curl gcc git gpg make man pass vim yadm
RUN useradd --create-home --shell /bin/bash rich

USER rich

WORKDIR /home/rich

RUN mkdir .opt
RUN git -C .opt clone https://github.com/junegunn/fzf.git
RUN git -C .opt clone https://github.com/rupa/z.git
RUN rm .bashrc
RUN yadm clone --bootstrap https://github.com/rdodson41/dot-files.git
