provider "aws" {
  region = "us-east-1"
}

module "web" {
  source = "../../modules/moshe"
  count = var.moshe == "haim" ? 1 : 0
  instance_type = "t2.micro"
}
variable "create_module" {
  default = 1
}

variable "moshe" {
  type = string
}
output "connect" {
  value = "ssh ec2-user@${module.web.public_ip}"
}