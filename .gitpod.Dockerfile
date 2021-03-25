FROM baneeishaque/gitpod-workspace-full-vnc-1366x768-tint2-pcmanfm-zsh-anaconda3-2020-11-jupyterlab

RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash

RUN sudo apt update | tee -a /tmp/apt.log \
 && sudo apt install -y \
     git-lfs | tee -a /tmp/apt.log \
 && sudo rm -rf /var/lib/apt/lists/*