provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami = "ami-0dbc3d7bc646e8516"
  instance_type = "t2.micro"
  tags = {
    Name = var.server_name
  }
}

#terraform {
#  backend "s3" {
#    region = "eu-central-1"
#    bucket = "my-bucket-name"
#    key = "path/to/state/file"
#  }
#}
variable "server_name" {
  type = string
  default = "my-server"
  description = "the name of the server"
}
output "ip_address" {
  value = aws_instance.web.private_ip
}