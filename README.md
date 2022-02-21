# Make-Ubuntu-Great-Again

## VM & Wine
```bash
sudo apt install wine-development
# virtualbox
sudo apt install -y virtualbox
sudo apt install -y install virtualbox-dkms
```

## Utils
```bash
sudo apt install xclip
sudo apt install sshuttle
sudo apt install ncdu
sudo apt install tmux
sudo apt install terminator
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

## Python
```bash
sudo apt install ipython
sudo apt install nox
# pycharm
sudo snap install pycharm-community --classic
# poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
```

## Develop
```bash
sudo apt install git
sudo apt install code
sudo apt install vim
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
```

## Social
```bash
sudo apt install telegram-desktop
sudo snap install slack --classic
sudo snap install discord
```
