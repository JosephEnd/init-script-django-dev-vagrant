#!/bin/bash

# Update and upgrade the server packages.
sudo apt-get update -y
sudo apt-get upgrade -y
# Set Ubuntu Language
sudo locale-gen en_GB.UTF-8
# Install Python, SQLite and pip
sudo apt-get install python3-dev sqlite python-pip make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl gcc g++ git python3-pip -y
# Upgrade pip naar de laatste versie
pip3 install --upgrade pip
pip install --upgrade pip
# CD naar root directory and cd in vagrant directory, geef optie om directory naam op te geven
cd / && cd vagrant && mkdir $appDirectory && cd $appDirectory
# git init && git pull geef optie om git pull adress en token in te voeren
git init && git pull https://$appToken@github.com/$appGitRepo
#add pyenv bashrc lines
echo 'export PATH="/home/vagrant/.pyenv/bin:$PATH"' >> /home/vagrant/.bashrc
echo 'export PATH="/home/vagrant/.pyenv/bin:$PATH"' >> ~/.bashrc:
echo 'eval "$(pyenv init -)"' >> /home/vagrant/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc:
echo 'eval "$(pyenv virtualenv-init -)"' >> /home/vagrant/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc:
#install pyenv
curl https://pyenv.run | bash
# run pyenv
pyenv install
# pip3 install pipenv
pip3 install pipenv
# creeer pipenv van
pipenv install --dev --ignore-pipfile
# curl NodeJS 12 repo
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
# install NodeJS 12
sudo apt-get install nodejs -y
# curl Yarn repo
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
# add Yarn repo
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
# apt update & install yarn
sudo apt update -y && sudo apt install yarn -y
# yarn install
yarn install
