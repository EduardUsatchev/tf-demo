resource "aws_instance" "web" {
  ami = var.ami_id
  instance_type = var.instance_type
}

variable "instance_type" {}

variable "ami_id" {
  default = "ami-0b898040803850657"
}
output "public_ip" {
  value = "${aws_instance.web.ami} ${aws_instance.web.public_ip} ${aws_instance.web.id}"
}
