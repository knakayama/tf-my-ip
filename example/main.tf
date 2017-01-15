provider "aws" {
  region = "${var.region}"
}

module "my_ip" {
  source = ".."
}
