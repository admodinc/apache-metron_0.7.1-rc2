#!/etc/bin/env bash

sudo apt install rsync && \
sudo pip2 install ansible==2.6.5 && \

wget https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_x86_64.deb && \
sudo dpkg -i vagrant_2.2.9_x86_64.deb && \

rm vagrant_2.2.9_x86_64.deb && \

vagrant plugin install vagrant-google vagrant-hostmanager vagrant-cachier && \

RSA_FILE=~/.ssh/id_rsa

if [ ! -f "$RSA_FILE" ]; then
    ssh-keygen -f ~/.ssh/id_rsa -q -N ""
fi

echo -e "++++++++++++++++++++++++++++\n\n\n"
echo "RSA public key to be copied over to Compute Engine SSH Metadata"
echo -e "----------------------------\n\n"

cat ~/.ssh/id_rsa.pub
echo -e "\n\n----------------------------"