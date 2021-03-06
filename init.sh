#!/usr/bin/env bash

sudo aptitude update
sudo aptitude safe-upgrade -y

sudo ufw default DENY
sudo ufw limit ssh
yes | sudo ufw enable

sudo sed -i -e "s/^PasswordAuthentication.*/PasswordAuthentication no/g" /etc/ssh/sshd_config
cat /vagrant/keys/*.pub >> /home/vagrant/.ssh/authorized_keys
sudo service ssh restart
