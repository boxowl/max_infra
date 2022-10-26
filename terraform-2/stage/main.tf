provider "google" {
# version = "4.0.0"
project = "${var.project}"
region = "${var.region}"
}
module "app" {
source = "/Users/maximpacts/max_infra/terraform-2/modules/app"
public_key_path = "${var.public_key_path}"
zone = "${var.zone}"
app_disk_image = "${var.app_disk_image}"
}
module "db" {
source = "/Users/maximpacts/max_infra/terraform-2/modules/db"
public_key_path = "${var.public_key_path}"
zone = "${var.zone}"
db_disk_image = "${var.db_disk_image}"
}
module "vpc" {
source = "/Users/maximpacts/max_infra/terraform-2/modules/vpc"
source_ranges = ["0.0.0.0/0"]
}