provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami = "ami-0b898040803850657"
  instance_type = "t2.micro"
  tags = {
    Name = "blabla"
  }
}

output "ip_address" {
  value = aws_instance.web.public_dns
}