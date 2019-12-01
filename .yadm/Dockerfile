FROM debian:latest

RUN apt-get update
RUN apt-get install --yes byobu curl fzf gcc git gpg libncurses-dev make man pass vim yadm
RUN git clone https://github.com/vim/vim.git /opt/vim
RUN make --directory=/opt/vim
RUN make --directory=/opt/vim install
RUN useradd --create-home --shell /bin/bash rich

USER rich

WORKDIR /home/rich

RUN yadm clone --bootstrap https://github.com/rdodson41/dot-files.git
