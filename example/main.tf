provider "aws" {
  region = "${var.region}"
}

module "my_ip" {
  source = "github.com/knakayama/tf-my-ip"
}
