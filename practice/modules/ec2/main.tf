provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "example" {
    ami = var.ami
    instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")

    tags = {
      "Name" = lookup(var.instance_tag, terraform.workspace, "webservers")
    }
}