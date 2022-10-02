# Заменить на ID своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_cloud_id" {
  default = "b1g3lc78954qacd8cqsk"
}

# Заменить на Folder своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_folder_id" {
  default = "b1ge8pkr6bvdj1t5qd98"
}

# Заменить на ID своего образа
# ID можно узнать с помощью команды yc compute image list
#variable "centos-7-base" {
#  default = "fd8d3tnr4retlm4kbecj"
#}

# Accsess key
variable "yandex_accsess_key" {
  default = "YCAJEqMdp8vbHQ-Ds-gjwEaBs"
}

# Secret key
variable "yandex_secret_key" {
  default = "YCNIBYvhSYKSaAzeIeG-0uEOhQ_8UFKud3JYHcVF"
}
variable "zones" {
  type    = list(string)
  description = "List Yandex Cloud zones"
}

variable "cidr" {
  type    = list(string)
  description = "List supernetting"
}

variable "name" {
  type = list(string)
  description = "List domains"
}

variable "hostname" {
  type = list(string)
  description = "List hostnames"
}

variable "cloudflare_zone_id" {
  description = "ID Cloudflare zone"
}

variable "sub_domain" {
  type    = list(string)
  description = "List subdomains"
}

variable "revproxy_ip" {
  description = "Reversy Proxy internal IP"
}