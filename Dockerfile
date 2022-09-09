FROM parrotsec/security:latest

WORKDIR /root

RUN apt update 
RUN apt full-upgrade -y

RUN apt install gobuster fzf exa zsh zsh-syntax-highlighting zsh-autosuggestions python3-pip -y

RUN pip3 install updog

RUN mkdir /root/.antigen
RUN curl -L git.io/antigen > /root/.antigen/antigen.zsh
COPY files/root_zshrc /root/.zshrc

ENTRYPOINT [ "zsh" ]
