resource "aws_security_group" "example" {
  name_prefix = "example-"
  vpc_id      = "${aws_vpc.vpc.id}"
  description = "example"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${module.my_ip.result["ip"]}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
