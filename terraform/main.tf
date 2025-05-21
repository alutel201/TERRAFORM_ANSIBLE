terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

provider "virtualbox" {}

resource "virtualbox_vm" "ubuntu" {
  name   = "ubuntu-24-04"
  cpus   = 2
  memory = "2048 mib"
  image  = "UDesktop-24.04.ova"
  status = "poweroff"

  network_adapter {
    type           = "hostonly"
    host_interface = "6beb9660-6cd4-4802-bd3b-f1ca70941891"
  }
}

