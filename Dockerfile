FROM debian:latest

RUN apt-get update -y && apt upgrade -y
RUN apt-get install curl man git vim python3 zsh -y
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y

COPY config/sublimemonokai.vim /root/.vim/colors/
COPY config/.vimrc /root/

RUN useradd -m pepe
RUN echo "pepe:admin" | chpasswd
