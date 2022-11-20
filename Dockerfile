FROM archlinux:base-devel

ARG USERNAME=user

RUN pacman -Syu git --noconfirm && \
  pacman -Scc --noconfirm && \
  useradd -m ${USERNAME} && \
  echo "${USERNAME} ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers

USER ${USERNAME}
WORKDIR /home/${USERNAME}
