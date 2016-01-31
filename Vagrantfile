# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "hashicorp/precise32"

  # Comment out the 3 lines below to display the VM in the VirtualBox window.
  # This can be helpful for debugging if the `vagrant up` command times out.

  # config.vm.provider :virtualbox do |vb|
  #   vb.gui = true
  # end

  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "forwarded_port", guest: 5432, host: 5432
  config.vm.provision "shell", path: "provision.sh"
end
