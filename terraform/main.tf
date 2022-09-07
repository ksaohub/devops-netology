
resource "yandex_compute_image" "foo-image" {
  name       = "my-custom-image"
  source_url = "https://storage.yandexcloud.net/lucky-images/kube-it.img"
}

resource "yandex_compute_instance" "vm1" {
  name          = "vm-test-1"
  count         = local.web_instance_count_map[terraform.workspace]
  instance_type = local.web_instance_type_map[terraform.workspace]

  boot_disk {
    initialize_params {
      image_id = yandex_compute_image.foo-image.id
    }
  }

  network_interface {
    subnet_id = ""
    nat       = true
  }

  resources {
    cores  = 1
    memory = 2
  }

  lifecycle {
    create_before_destroy = true
//   prevent_destroy      = true
  }
}

/* resource "yandex_compute_instance" "vm2" {
  name          = "vm-test-2"
  for_each      = local.web_instance_type_map
  instance_type = local.web_instance_count_map

  boot_disk {
    initialize_params {
      image_id = yandex_compute_image.foo-image.id
    }
  }

  network_interface {
    subnet_id = ""
    nat       = true
  }

  resources {
    cores  = 1
    memory = 2
  }

  lifecycle {
    create_before_destroy = true
//   prevent_destroy      = true
  }
} */