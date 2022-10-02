
output "vm_proxy_public_ip" {
  description = "Public IP addresses on vm_proxy"
  value = yandex_compute_instance.revproxy.network_interface.0.nat_ip_address
}

output "vm_proxy_private" {
  value       = yandex_compute_instance.revproxy.network_interface.0.ip_address
  description = "Private IP addresses on vm_proxy"
}

