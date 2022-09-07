variable "yandex_cloud_id" {
  default = ""
}

variable "yandex_folder_id" {
  default = ""
}

variable "yandex_token" {
  default = ""
}

variable "yandex_region" {
  default = "ru-central1-a"
}

locals {
  web_instance_type_map = {
    stage = "b2.micro"
    prod  = "b2.medium"
  }
}

locals {
  web_instance_count_map = {
    stage = 1
    prod = 2
  }
}