
# -*- mode: ruby -*-
# vi: set ft=ruby :

# Networking
private_ip = ENV['PRIVATE_IP'] || "172.28.128.4"

# Base box selection
base_box = ENV['BASE_BOX'] || "ubuntu/xenial64"
hostname_box = ENV['HOSTNAME_BOX'] || "appName"

# Dev environment defined variables
bootstrap_url = "https://raw.githubusercontent.com/JosephEnd/init-script-django-dev-vagrant/master/bootstrap-django.sh"

$setup_rc_path = <<SCRIPT
echo 'export PATH="/home/vagrant/.pyenv/bin:$PATH"' >> /home/vagrant/.bashrc
echo 'eval "$(pyenv init -)"' >> /home/vagrant/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> /home/vagrant/.bashrc
source /home/vagrant/.profile
SCRIPT

$bootstrap = <<SCRIPT
curl -sSL #{bootstrap_url} | bash - s
SCRIPT

Vagrant.configure("2") do |config|

  # Setup networking
  config.vm.network :private_network, ip: private_ip

  # Use base_box set at the top of this file
  config.vm.box = base_box
  config.vm.hostname = hostname_box

  config.vm.provision "shell", inline: $setup_rc_path, privileged: false
  config.vm.provision "shell", inline: $bootstrap, privileged: false
end
