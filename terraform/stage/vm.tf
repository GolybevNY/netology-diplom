resource "yandex_compute_instance" "revproxy" {
  name     = "proxy"
  hostname = "golubevny.site"
  zone     = var.zones[0]

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      #image_id = "fd84mnpg35f7s7b0f5lg" // nat-instance-ubuntu-1804-lts
      image_id = "fd8v7ru46kt3s4o5f0uo"
      type     = "network-hdd"
      size     = "10"
    }
  }

  network_interface {
    subnet_id   = yandex_vpc_subnet.subnet[0].id
    ip_address  = var.revproxy_ip
    nat         = true
    ipv6        = false
  }

  metadata = {
#    serial-port-enable: 1
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}    
resource "yandex_compute_instance" "db01" {
  name     = "db01"
  hostname = "db01.golubevny.site"
  zone     = var.zones[1]

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd8h34rub6pjpg4qgi8j" // ubuntu-1804-lts
      type     = "network-hdd"
      size     = "10"
    }
  }

  network_interface {
    subnet_id   = yandex_vpc_subnet.subnet[1].id
    ipv6        = false
  }

  metadata = {
    serial-port-enable: 1
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}