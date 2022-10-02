provider "yandex" {
  service_account_key_file = "key.json"
  cloud_id  = "${var.yandex_cloud_id}"
  folder_id = "${var.yandex_folder_id}"
  zone = var.zones[1]
}

#provider "cloudflare" {
#  # email pulled from $CLOUDFLARE_EMAIL
#  # api_token pulled from $CLOUDFLARE_API_TOKEN
#}