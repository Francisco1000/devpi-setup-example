Vagrant.configure('2') do |config|
    config.vm.provider 'virtualbox' do |v|
        v.memory = 2048
        v.cpus = 2
        v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end

    config.vm.box = 'debian/jessie64'

    config.vm.network 'private_network', ip: '192.192.1.2'
    config.vm.synced_folder '.', '/project', type: 'nfs', mount_options: ['actimeo=1', 'vers=3']

    config.vm.provision "shell", path: "vagrant/provision.sh", privileged: true
    config.vm.provision "shell", path: "vagrant/install_devpi.sh", privileged: false
    config.vm.provision "shell", path: "vagrant/devpi_build_py2.sh", privileged: false
    config.vm.provision "shell", path: "vagrant/devpi_build_py3.sh", privileged: false

    config.ssh.forward_agent = true
end
