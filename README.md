# Make-Ubuntu-Great-Again

# Packages

## Terminal
```bash
sudo apt install tmux
sudo apt install terminator
# The fuck (https://github.com/nvbn/thefuck)
sudo apt install python3-dev python3-pip python3-setuptools && pip3 install thefuck --user
# Zsh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Autojump (https://github.com/wting/autojump)
cd /tmp && git clone git://github.com/wting/autojump.git && cd autojump && ./install.py
echo '[[ -s /home/smss/.autojump/etc/profile.d/autojump.sh ]] && source /home/smss/.autojump/etc/profile.d/autojump.sh
        autoload -U compinit && compinit -u
' >> ~/.zshrc
exec $SHELL
```

## oh-my-zsh

install
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

plugins
```bash
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/darvid/zsh-poetry.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-completions
git clone https://github.com/zsh-users/zsh-history-substring-search
cd ~/.oh-my-zsh/custom/themes
git clone https://github.com/romkatv/powerlevel10k.git
```

## VM & Wine
```bash
sudo apt-get install wine-stable
sudo apt-get install --install-recommends winehq-stable


# virtualbox
sudo apt install -y virtualbox
sudo apt install -y install virtualbox-dkms
```

## Utils
```bash
sudo apt install xclip
sudo apt install sshuttle
sudo apt install ncdu
sudo apt install htop
sudo apt install dstat
```

## Web
```bash
sudo apt install curl
sudo snap install postman
# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && //
sudo apt install ./google-chrome-stable_current_amd64.deb
# ngrok
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null &&
              echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list &&
              sudo apt update && sudo apt install ngrok   
```

## Rust
```bash
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
```

## Python
```bash
sudo apt install python-is-python3
sudo apt install nox
# pycharm
sudo snap install pycharm-community --classic
# poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
# pyenv
sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n eval "$(pyenv init -)"\nfi' >> ~/.bashrc
```

## Develop
```bash
sudo apt install git
sudo apt install vim
# vscode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders
```

## Docker
```bash
# Docker
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo groupadd docker
sudo usermod -aG docker $USER
# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose //
sudo chmod +x /usr/local/bin/docker-compose
```

## Node
```bash
sudo apt install npm
sudo apt install nodejs
```

## Entertainment
```bash
sudo apt install steam
```

## Media
```bash
sudo apt install vlc
sudo apt install mpv
```

## Social
```bash
sudo snap install telegram-desktop
sudo snap install slack --classic
sudo snap install discord
```

# Configs

## Make Shift+NumPad work like Windows
```bash
sed -i /etc/default/keyboard 's/XKBOPTIONS="\(.*\)"/XKBOPTIONS="numpad:microsoft,\1"/g'
# to check
echo /etc/default/keyboard
```
