FROM ghcr.io/minetaro12/archlinux:latest

# install package
RUN sudo pacman -Syu --noconfirm fish go nodejs-lts-hydrogen yarn && \
    sudo pacman -Scc --noconfirm

# configuration
RUN sudo sed -i "s/NoProgressBar/#NoProgressBar/g" /etc/pacman.conf && \
    mkdir -p $HOME/.config/fish/ && \
    echo "set fish_greeting" >> $HOME/.config/fish/config.fish && \
    echo "set -x PATH $PATH $HOME/.yarn/bin $HOME/go/bin" >> $HOME/.config/fish/config.fish

CMD ["/usr/bin/fish"]