FROM debian:latest

RUN apt-get update
RUN apt-get install --yes bash-completion byobu curl fzf gcc git gpg jq make man pass procps python-pip python3-pip ripgrep silversearcher-ag sudo vim-nox yadm
RUN pip3 install powerline-status
RUN useradd --groups sudo --create-home --password '$1$pKMsk25j$xjnW2hDevxCklXRdA0QtW.' --shell /bin/bash rich

USER rich

WORKDIR /home/rich

RUN mkdir .opt
RUN git -C .opt clone https://github.com/junegunn/fzf.git
RUN git -C .opt clone https://github.com/rupa/z.git
RUN rm .bashrc
RUN yadm clone --bootstrap https://github.com/rdodson41/dot-files.git
