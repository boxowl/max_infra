variable project {
description = "maxotus"
}
variable region {
description = "europe-west-1"
# Значение по умолчанию
default = "europe-west1"
}
# Зона VM
variable zone {
description = "europe-west1-d"
default = "europe-west1-d"
}
variable public_key_path {
# Описание переменной
description = "/Users/maximpacts/.ssh/id_rsa.pub"
}
variable disk_image {
description = "reddit-base"
}
variable app_disk_image {
description = "Disk image for reddit app"
default = "reddit-app-base-1666037486"
}
variable db_disk_image {
description = "Disk image for reddit db"
default = "reddit-db-1666037686"
}
variable source_ranges {
description = "Allowed IP addresses"
default = ["0.0.0.0/0"]
}