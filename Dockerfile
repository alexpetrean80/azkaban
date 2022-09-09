FROM parrotsec/security:latest

WORKDIR /root

RUN apt-get update 
RUN apt-get full-upgrade -y

COPY files/requirements.txt /tmp/requirements.txt
COPY scripts/install_pkgs.sh /tmp/install_pkgs.sh
RUN chmod +x /tmp/install_pkgs.sh
RUN /tmp/install_pkgs.sh
RUN rm /tmp/requirements.txt /tmp/install_pkgs.sh

RUN pip3 install updog

RUN mkdir /root/.antigen
RUN curl -L git.io/antigen > /root/.antigen/antigen.zsh
COPY files/root_zshrc /root/.zshrc

ENTRYPOINT [ "zsh" ]
