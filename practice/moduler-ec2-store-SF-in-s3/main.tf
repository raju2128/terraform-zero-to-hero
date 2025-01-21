provider "aws" {
  region = "us-east-1"
}

variable "ami" {
  description = "value for ami id"
}


module "ec2" {
  source = "./modules/ec2"
  ami = var.ami
}