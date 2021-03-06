# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  config.vm.box = "ogarcia/archlinux-201510-x64"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"


  if false
    config.vm.provider 'docker' do |d|
      d.image = 'base/archlinux_public'
    end
  else
    config.vm.define "arch_machine"
    config.vm.provider "virtualbox" do |vb|
      vb.name = "archlinux 64_2"
      vb.gui = true
      vb.memory = "4096"
      vb.cpus = "2"
      vb.customize ["modifyvm", :id, "--vram", "128"]
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
      vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
    end
  end

  username = ENV['CREATE_USER']
  password = ENV['CREATE_PASSWORD']
  ENV['VAGRANT_REPO'] = `git config --get remote.origin.url`

  fail 'set user and password' unless !(username.nil? || password.nil?)

  config.vm.provision 'shell' do |s|
    s.path = 'bootstrap.sh'
  end
end
