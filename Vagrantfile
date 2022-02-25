Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y ansible

    cp /vagrant/.ansible.cfg /home/vagrant/

    cp /vagrant/set_target.sh /home/vagrant/
    chown vagrant:vagrant /home/vagrant/set_target.sh
    chmod +x /home/vagrant/set_target.sh

    cp /vagrant/playbook.yml /home/vagrant/
    chown vagrant:vagrant /home/vagrant/playbook.yml

    ssh-keygen -b 2048 -t rsa -f /home/vagrant/.ssh/id_rsa -q -N ""
    chown vagrant:vagrant /home/vagrant/.ssh/id_rsa
    chown vagrant:vagrant /home/vagrant/.ssh/id_rsa.pub
  SHELL
end
