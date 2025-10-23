Vagrant.configure("2") do |config|
    config.vm.box = "generic/rocky9"
    #config.vm.provision :shell, path: ".vagrant/scripts/bootstrap.sh"
    config.vm.synced_folder '.vagrant/scripts/', '/home/vagrant/scripts/'
    #config.vm.disk :disk, size: "20GB", name: "disk1"

    config.vm.provider "virtualbox" do |v|
        v.memory = 1024
        v.cpus = 1
    end

    # Define first machine
    config.vm.define "machine1" do |machine1|
        #machine1.vm.hostname = "machine1.local"
        machine1.vm.network "private_network", ip: "192.168.56.10"
    end

    # Define second machine
    config.vm.define "machine2" do |machine2|
        #machine2.vm.hostname = "machine2.local"
        machine2.vm.network "private_network", ip: "192.168.56.11"
    end
end
