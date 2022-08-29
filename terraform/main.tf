
resource "yandex_compute_image" "foo-image" {
  name       = "my-custom-image"
  source_url = "https://storage.yandexcloud.net/lucky-images/kube-it.img"
}

resource "yandex_compute_instance" "vm" {
  name = "vm-from-custom-image"

  # ...

  boot_disk {
    initialize_params {
      image_id = yandex_compute_image.foo-image.id
    }
  }
  network_interface {
    subnet_id = ""
  }
  resources {
    cores  = 1
    memory = 2
  }
}