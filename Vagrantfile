
# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
<<<<<<< HEAD
  #
  # vagrant box defined variables
  os_version = "ubuntu/xenial64"
  vm_net_type= "private_network"
  vm_ip = "172.28.128.4"
  #
  # Dev environment defined variables


  script = "https://raw.githubusercontent.com/JosephEnd/init-script-django-dev-vagrant/master/bootstrap-django.sh"

  test_echo = "echo 'environment variables inline'"
  test_echo2 = "echo 'environment variables inline'"

  config.vm.box = $os_version

  config.vm.network $vm_net_type, ip: $vm_ip

  config.vm.provision "shell", priviliged: false, inline: <<-SHELL
  $test_echo
=======
  config.vm.box = "ubuntu/xenial64"

  config.vm.network "private_network", ip: "172.28.128.4"

  config.vm.provision "shell", inline: <<-SHELL
>>>>>>> 428f2032e5aa27a747b0d6c34c7c3b707213ac43
  echo 'export PATH="/home/vagrant/.pyenv/bin:$PATH"' >> /home/vagrant/.bashrc
  echo 'eval "$(pyenv init -)"' >> /home/vagrant/.bashrc
  echo 'eval "$(pyenv virtualenv-init -)"' >> /home/vagrant/.bashrc
  source /home/vagrant/.profile
<<<<<<< HEAD
  $test_echo2
  curl -sSL $script | bash - s
=======

  curl 
>>>>>>> 428f2032e5aa27a747b0d6c34c7c3b707213ac43
  SHELL

end
