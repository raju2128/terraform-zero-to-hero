variable "ami" {
  description = "This is AMI for the instance"
}

variable "instance_type" {
  description = "value"
  type = map(string)

  default = {
    "dev" = "t2.micro"
    "stage" = "t2.micro"
    "prod" = "t2.micro"
  }
}

variable "instance_tag" {
  description = "value for instance tag"
  type = map(string)

  default = {
    "dev" = "dev-server"
    "stage" = "stage-server"
    "prod" = "prod-server"
  }
}

