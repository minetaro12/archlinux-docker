FROM ghcr.io/minetaro12/archlinux:latest

# install package
RUN sudo pacman -Syu --noconfirm fish go && \
    sudo pacman -Scc --noconfirm

# configuration
RUN sudo sed -i "s/NoProgressBar/#NoProgressBar/g" /etc/pacman.conf && \
    mkdir -p "$HOME/.config/fish/" && \
    echo "set fish_greeting" >> $HOME/.config/fish/config.fish && \
    echo 'set -x PATH $PATH "$HOME/go/bin"' >> $HOME/.config/fish/config.fish && \
    curl https://get.volta.sh | bash

CMD ["/usr/bin/fish"]