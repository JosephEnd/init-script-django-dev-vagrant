#!/bin/bash

# Update and upgrade the server packages.
sudo apt-get update -y
sudo apt-get upgrade -y
# Set Ubuntu Language
sudo locale-gen en_GB.UTF-8
# Install Python, SQLite and pip
sudo apt-get install -y python3-dev sqlite python-pip make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl gcc g++ git python3-pip python3-setuptools easy_install3 pip
# Upgrade pip naar de laatste versie
python -m pip install --upgrade pip
# CD naar root directory and cd in vagrant directory, geef optie om directory naam op te geven
cd / && cd vagrant
# git init && git pull geef optie om git pull adress en token in te voeren
git init && git clone https://github.com/JosephEnd/starter-test
# cd into
cd starter-test
#install pyenv
curl https://pyenv.run | bash
# run pyenv
pyenv install
# pip3 install pipenv
pip3 install pipenv
