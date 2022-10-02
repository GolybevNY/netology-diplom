terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.75.0"
    }
  }
}

provider "yandex" {
  service_account_key_file = "key.json"
  cloud_id  = "${var.yandex_cloud_id}"
  folder_id = "${var.yandex_folder_id}"
  zone      = "ru-central1-a"
}

resource "yandex_storage_bucket" "s3-diplom" {
  access_key = "${var.yandex_accsess_key}"
  secret_key = "${var.yandex_secret_key}"
  bucket = "s3-diplom"
  force_destroy = true
}