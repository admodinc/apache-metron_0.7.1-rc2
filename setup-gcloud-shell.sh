#!/etc/bin/env bash

pip2 install ansible==2.6.5

wget https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_x86_64.deb
sudo dpkg -i vagrant_2.2.9_x86_64.deb

rm vagrant_2.2.9_x86_64.deb

vagrant plugin install vagrant-google vagrant-hostmanager vagrant-cachier