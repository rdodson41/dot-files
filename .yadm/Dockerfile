FROM debian:latest

RUN apt-get update
RUN apt-get install --yes bash-completion byobu curl fzf gcc git gpg make man pass vim yadm
RUN useradd --create-home --shell /bin/bash rich

USER rich

WORKDIR /home/rich

RUN git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
RUN rm .bashrc
RUN yadm clone --bootstrap https://github.com/rdodson41/dot-files.git
