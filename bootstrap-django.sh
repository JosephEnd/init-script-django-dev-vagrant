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
python pip3 install --upgrade pip
python3 pip3 install --upgrade pip
# CD naar root directory and cd in vagrant directory, geef optie om directory naam op te geven
cd / && cd vagrant && mkdir appName && cd appName
# git init && git pull geef optie om git pull adress en token in te voeren
git init && git clone https://github.com/JosephEnd/starter-test
#install pyenv
curl https://pyenv.run | bash
# run pyenv
pyenv install
# pip3 install pipenv
pip3 install pipenv
# creeer pipenv van
pipenv install --dev
