Vagrant::Config.run do |config|
  config.vm.define :chamilo1 do |chamilo1_config|
    chamilo1_config.vm.box = "Centos6.2"
    chamilo1_config.vm.host_name = "chamilo1-vm.vagrantup.com"
    chamilo1_config.ssh.max_tries = 333
    chamilo1_config.vm.forward_port 80, 8000
    chamilo1_config.vm.provision :puppet do |chamilo1_puppet|
      chamilo1_puppet.manifests_path = "manifests"
      chamilo1_puppet.manifest_file  = "site.pp"
      chamilo1_puppet.module_path = "./modules"
    end
  end
  config.vm.define :chamilo2 do |chamilo2_config|
    chamilo2_config.vm.box = "Centos6.2"
    chamilo2_config.vm.host_name = "chamilo2-vm.vagrantup.com"
    chamilo2_config.ssh.max_tries = 333
    chamilo2_config.vm.forward_port 80, 8001
    chamilo2_config.vm.provision :puppet do |chamilo2_puppet|
      chamilo2_puppet.manifests_path = "manifests"
      chamilo2_puppet.manifest_file  = "site.pp"
      chamilo2_puppet.module_path = "./modules"
    end
  end
  config.vm.define :dokeos2 do |dokeos2_config|
    dokeos2_config.vm.box = "Centos6.2"
    dokeos2_config.vm.host_name = "dokeos2-vm.vagrantup.com"
    dokeos2_config.ssh.max_tries = 333
    dokeos2_config.vm.forward_port 80, 8002
    dokeos2_config.vm.provision :puppet do |dokeos2_puppet|
      dokeos2_puppet.manifests_path = "manifests"
      dokeos2_puppet.manifest_file  = "site.pp"
      dokeos2_puppet.module_path = "./modules"
    end
  end
  config.vm.define :claroline do |claroline_config|
    claroline_config.vm.box = "Centos6.2"
    claroline_config.vm.host_name = "claroline-vm.vagrantup.com"
    claroline_config.ssh.max_tries = 333
    claroline_config.vm.forward_port 80, 8003
    claroline_config.vm.provision :puppet do |claroline_puppet|
      claroline_puppet.manifests_path = "manifests"
      claroline_puppet.manifest_file  = "site.pp"
      claroline_puppet.module_path = "./modules"
    end
  end
  config.vm.define :moodle do |moodle_config|
    moodle_config.vm.box = "Centos6.2"
    moodle_config.vm.host_name = "moodle-vm.vagrantup.com"
    moodle_config.ssh.max_tries = 333
    moodle_config.vm.forward_port 80, 8004
    moodle_config.vm.provision :puppet do |moodle_puppet|
      moodle_puppet.manifests_path = "manifests"
      moodle_puppet.manifest_file  = "site.pp"
      moodle_puppet.module_path = "./modules"
    end
  end
end
